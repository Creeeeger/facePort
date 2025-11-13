.class Lcom/samsung/app/video/editor/external/Element$RegionList;
.super Ljava/util/Vector;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegionList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector<",
        "Lcom/samsung/app/video/editor/external/Region;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/app/video/editor/external/Element;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/app/video/editor/external/Element;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/app/video/editor/external/Element;

    .line 927
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 930
    const-string v0, "Element"

    const-string/jumbo v1, "removeRegion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/app/video/editor/external/Region;

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 934
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/app/video/editor/external/Region;

    .line 936
    .local v1, "re":Lcom/samsung/app/video/editor/external/Region;
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 937
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$100(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Element;->isSuperSlow(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 938
    const-string v2, "RecordingMode.SUPERSLOW"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_1

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 940
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v4}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_0

    .line 941
    :cond_1
    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_2

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_2

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 942
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_0

    .line 943
    :cond_2
    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_3

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_3

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_3

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 944
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v3}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto/16 :goto_0

    .line 945
    :cond_3
    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_7

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-ge v0, v2, :cond_7

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_7

    iget v0, v1, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v2

    if-lt v0, v2, :cond_7

    .line 946
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v3}, Lcom/samsung/app/video/editor/external/Element;->access$300(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v4}, Lcom/samsung/app/video/editor/external/Element;->access$200(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_0

    .line 948
    :cond_4
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$100(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Element;->isSlowV2_120(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 949
    const-string v2, "RecordingMode.SLOW_V2_120"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_0

    .line 951
    :cond_5
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/Element;->access$100(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v2, v3, :cond_6

    .line 952
    const-string v2, "RecordingMode.SLOW_V2_240"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_0

    .line 955
    :cond_6
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element$RegionList;->this$0:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/Element;->access$000(Lcom/samsung/app/video/editor/external/Element;)Lcom/samsung/app/video/editor/external/ElementChangeListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 958
    :cond_7
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/Region;->setParentElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 959
    invoke-super {p0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 932
    .end local v1    # "re":Lcom/samsung/app/video/editor/external/Region;
    :cond_8
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
