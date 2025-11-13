.class public final synthetic Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->$r8$lambda$kp0CIfYeIfB3Lu_iIUvcmztsysA(Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
