.class public Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
.super Ljava/lang/Object;
.source "ContextEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mocca/ContextEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextEventBuilder"
.end annotation


# instance fields
.field private blacklist mData:[B

.field private blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mTimestamp:J

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/mocca/ContextEvent;
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/mocca/ContextEvent;

    iget-wide v2, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    iget-object v4, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mocca/ContextEvent;-><init>(JLjava/lang/String;Ljava/lang/String;[BLcom/samsung/android/mocca/ContextEvent-IA;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setData([B)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mData:[B

    return-object p0
.end method

.method public blacklist setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTimestamp(J)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mTimestamp:J

    return-object p0
.end method

.method public blacklist setType(Ljava/lang/String;)Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;->mType:Ljava/lang/String;

    return-object p0
.end method
