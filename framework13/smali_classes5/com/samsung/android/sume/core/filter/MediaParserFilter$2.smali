.class Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;
.super Ljava/util/HashMap;
.source "MediaParserFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/filter/MediaParserFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

.field final synthetic blacklist val$contentId:I

.field final synthetic blacklist val$endTimeUs:J

.field final synthetic blacklist val$frameCount:I

.field final synthetic blacklist val$startTimeUs:J


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaParserFilter;IIJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/filter/MediaParserFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$contentId",
            "val$frameCount",
            "val$startTimeUs",
            "val$endTimeUs"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->this$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$contentId:I

    iput p3, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$frameCount:I

    iput-wide p4, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$startTimeUs:J

    iput-wide p6, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$endTimeUs:J

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "contents-id"

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "whole-frames"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "start-time-us"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "end-time-us"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method
