.class public final Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMs:J

.field private mProbeType:I

.field private mReturnCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;
    .locals 7

    .line 126
    new-instance v6, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->mDurationMs:J

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->mProbeType:I

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->mReturnCode:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;-><init>(JIILcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent-IA;)V

    return-object v6
.end method

.method public setDurationMs(J)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->mDurationMs:J

    return-object p0
.end method

.method public setProbeType(IZ)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;
    .locals 0

    .line 116
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent;->-$$Nest$smmakeProbeType(IZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->mProbeType:I

    return-object p0
.end method

.method public setReturnCode(I)Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;
    .locals 0

    .line 121
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ValidationProbeEvent$Builder;->mReturnCode:I

    return-object p0
.end method
