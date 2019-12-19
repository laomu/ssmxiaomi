package com.damu.xiaomi.service;

import com.damu.xiaomi.dao.ConsumerMapper;
import com.damu.xiaomi.entry.Consumer;
import com.damu.xiaomi.entry.ConsumerExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>项目文档： TODO</p>
 *
 * @author <a href="https://github.com/laomu/laomu.github.io">大牧</a>
 * @version V1.0
 */
@Service
public class ConsumerService {
    @Autowired
    private ConsumerMapper consumerMapper;

    public Consumer findConsumerWithUsernameAndPassword(Consumer consumer) {

        // 创建一个条件对象
        ConsumerExample ce = new ConsumerExample();
        ce.createCriteria().andUsernameEqualTo(consumer.getUsername())
                .andPasswordEqualTo(consumer.getPassword());
        // 查询数据
        List<Consumer> consumerList = consumerMapper.selectByExample(ce);

        // 判断返回结果
        return consumerList != null && consumerList.size() == 1 ? consumerList.get(0) : null;

    }

    public String register(Consumer consumer) {
        // 验证用户的账号是否存在
        ConsumerExample ce = new ConsumerExample();
        ce.createCriteria().andUsernameEqualTo(consumer.getUsername());
        // 根据条件对象查询数据
        List<Consumer> consumerList = consumerMapper.selectByExample(ce);
        if (consumerList != null && consumerList.size() > 0) {
            return "注册失败，账号已经存在，请使用其他账号注册";
        }
        // 添加用户
        consumerMapper.insertSelective(consumer);
        return "注册成功";
    }
}
