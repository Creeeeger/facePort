.class public final Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cachedResId:I

.field public isOverridden:Z

.field public lastCarrierId:Ljava/lang/Integer;

.field public lastIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public final overrides:Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;-><init>(Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->overrides:Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;

    invoke-direct {p1}, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;-><init>(Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->cachedResId:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;->isOverridden:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "networkTypeResIdCache={id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isOverridden="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
