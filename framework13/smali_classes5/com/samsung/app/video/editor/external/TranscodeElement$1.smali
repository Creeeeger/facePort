.class Lcom/samsung/app/video/editor/external/TranscodeElement$1;
.super Ljava/lang/Object;
.source "TranscodeElement.java"

# interfaces
.implements Lcom/samsung/app/video/editor/external/ElementChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/TranscodeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 693
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDurationChange(I)V
    .locals 3
    .param p1, "delta"    # I

    .line 696
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDurationChange Region : time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full movie duration before element duration change = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$100(Lcom/samsung/app/video/editor/external/TranscodeElement;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full movie duration after element duration change = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$100(Lcom/samsung/app/video/editor/external/TranscodeElement;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method public blacklist onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V
    .locals 3
    .param p1, "delta"    # I
    .param p2, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 716
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSlowRegionDurationChange Region : time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full movie duration after change region duration= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$100(Lcom/samsung/app/video/editor/external/TranscodeElement;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void
.end method

.method public blacklist onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Speed;Lcom/samsung/app/video/editor/external/Speed;I)V
    .locals 2
    .param p1, "prevSpeed"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p2, "newSpeed"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p3, "time"    # I

    .line 755
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSlowRegionSpeedChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0, p1, p3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$300(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 757
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0, p2, p3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$200(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 758
    return-void
.end method

.method public blacklist speedChangeOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
    .locals 3
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p2, "time"    # I

    .line 704
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " speedChangeOnAddRegion Region : time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0, p1, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$200(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 706
    return-void
.end method

.method public blacklist speedChangeOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
    .locals 3
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p2, "time"    # I

    .line 710
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " speedChangeOnRemoveRegion Region : time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;->this$0:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {v0, p1, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->access$300(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 712
    return-void
.end method
