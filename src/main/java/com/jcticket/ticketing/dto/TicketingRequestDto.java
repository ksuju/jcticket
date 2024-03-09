package com.jcticket.ticketing.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * packageName    : com.jcticket.ticketing.dto
 * fileName       : TicketingRequestDto
 * author         : 조영상
 * date           : 3/9/24
 * description    : 자동 주석 생성
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 3/9/24         조영상        최초 생성
 */
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TicketingRequestDto {
    private int ticketingPrice;
    private String seatList;
    private String ticketingDate;
    private String showingInfo;
    private String playName;
    private String stageName;
    private int ticketCnt;
    private String userId;
    private int discountAmount;
}
