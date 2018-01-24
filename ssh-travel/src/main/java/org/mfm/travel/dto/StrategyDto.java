package org.mfm.travel.dto;

import org.mfm.travel.model.Attachment;
import org.mfm.travel.model.TravelStrategy;

public class StrategyDto {
    private Attachment attachment;
    private TravelStrategy travelStrategy;


    public TravelStrategy getTravelStrategy() {
        return travelStrategy;
    }

    public void setTravelStrategy(TravelStrategy travelStrategy) {
        this.travelStrategy = travelStrategy;
    }

    public StrategyDto() {
    }

    public Attachment getAttachment() {
        return attachment;
    }

    public void setAttachment(Attachment attachment) {
        this.attachment = attachment;
    }

    public StrategyDto(Attachment attachment, TravelStrategy travelStrategy) {
        this.attachment = attachment;
        this.travelStrategy = travelStrategy;
    }


}
