package net.wanho.activeMq;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsMessagingTemplate;
import org.springframework.stereotype.Service;

import javax.jms.Destination;

@Service
public class Producer {

    @Autowired
//    也可以注入 JmsTemplate  JmsMessagingTemplate是对JmsTemplate的封装
    private JmsMessagingTemplate jmsTemplate;

    public void sendMessage(Destination destination, final String message) {
        jmsTemplate.convertAndSend(destination, message);
    }


}
