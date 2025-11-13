.class Lcom/android/internal/app/ChooserActivity$SemDeviceTargetComparator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemDeviceTargetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 9896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .locals 7
    .param p1, "lhs"    # Landroid/service/chooser/ChooserTarget;
    .param p2, "rhs"    # Landroid/service/chooser/ChooserTarget;

    .line 9899
    const/4 v0, 0x0

    .line 9900
    .local v0, "lhsSocre":I
    const/4 v1, 0x0

    .line 9901
    .local v1, "rhsSocre":I
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 9902
    .local v2, "lhsExtras":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 9904
    .local v3, "rhsExtras":Landroid/os/Bundle;
    const/4 v4, 0x0

    const-string v5, "com.samsung.intent.chooser.SHARE_UWB_DEVICE"

    if-eqz v2, :cond_0

    .line 9905
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 9907
    .local v6, "isUWB":Z
    move v0, v6

    .line 9910
    .end local v6    # "isUWB":Z
    :cond_0
    if-eqz v3, :cond_1

    .line 9911
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 9913
    .local v4, "isUWB":Z
    move v1, v4

    .line 9916
    .end local v4    # "isUWB":Z
    :cond_1
    sub-int v4, v1, v0

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    return v4
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 9896
    check-cast p1, Landroid/service/chooser/ChooserTarget;

    check-cast p2, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetComparator;->compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I

    move-result p1

    return p1
.end method
