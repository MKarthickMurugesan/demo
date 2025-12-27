package io.demo.controller;

//import org.springframework.data.redis.core.RedisTemplate;

import io.demo.entity.Student;
import io.demo.repository.StudentRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/demo")
@RequiredArgsConstructor
public class DemoController {

    private final StudentRepo studentRepo;
    //    private final RedisTemplate<String, String> redisTemplate;

//    public DemoController(RedisTemplate<String, String> redisTemplate) {
//        this.redisTemplate = redisTemplate;
//    }

    @GetMapping
    public ResponseEntity<String> getDemoMessage(@RequestParam(name = "name", required = false) String name,
                                                 @RequestParam(name = "email", required = false) String email) {
        String s = null;
        try {
//            redisTemplate.opsForValue().set("demoKey", "demoValue");
//
//            // email sent
//            s = redisTemplate.opsForValue().get("demoKey");

            Student student = new Student();
            student.setName(name);
            student.setEmail(email);

            System.out.println(student.toString());

            studentRepo.save(student);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(s);
        return ResponseEntity.ok("Hello from DemoController!");
    }
}
