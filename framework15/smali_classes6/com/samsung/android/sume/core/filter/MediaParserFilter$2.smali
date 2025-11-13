.class Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;
.super Ljava/util/HashMap;
.source "MediaParserFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/filter/MediaParserFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
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
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->this$0:Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$contentId:I

    iput p3, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$frameCount:I

    iput-wide p4, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$startTimeUs:J

    iput-wide p6, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$endTimeUs:J

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$contentId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "contents-id"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$frameCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "whole-frames"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$startTimeUs:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "start-time-us"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p2, p0, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->val$endTimeUs:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "end-time-us"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaParserFilter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
