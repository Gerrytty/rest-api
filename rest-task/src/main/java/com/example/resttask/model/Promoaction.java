package com.example.resttask.model;

import com.vladmihalcea.hibernate.type.array.LongArrayType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Type;
import org.hibernate.annotations.TypeDef;
import org.hibernate.annotations.TypeDefs;

import javax.persistence.*;

@Entity
@Table(name = "\"promoaction\"")
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@TypeDefs({
        @TypeDef(
                name = "long-array",
                typeClass = LongArrayType.class
        )
})
public class Promoaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    @Lob
    @Column(name = "name", nullable = false)
    private String name;

    @Lob
    @Column(name = "description")
    private String description;

    @Type(type = "long-array" )
    @Column(name = "user_id",
            columnDefinition = "bigint[]")
    private Long[] userId;

    @Type(type = "long-array" )
    @Column(name = "prize_id",
            columnDefinition = "bigint[]")
    private Long[] prizeId;

    public Long[] getPrizeId() {
        return prizeId;
    }

    public void setPrizeId(Long[] prizeId) {
        this.prizeId = prizeId;
    }

    public Long[] getUserId() {
        return userId;
    }

    public void setUserId(Long[] userId) {
        this.userId = userId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}