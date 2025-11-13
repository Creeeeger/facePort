.class public final synthetic Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Landroid/telephony/UiccCardInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
