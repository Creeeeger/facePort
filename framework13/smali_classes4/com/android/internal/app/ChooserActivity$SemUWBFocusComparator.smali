.class Lcom/android/internal/app/ChooserActivity$SemUWBFocusComparator;
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
    name = "SemUWBFocusComparator"
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

    .line 9920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .locals 12
    .param p1, "lhs"    # Landroid/service/chooser/ChooserTarget;
    .param p2, "rhs"    # Landroid/service/chooser/ChooserTarget;

    .line 9923
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 9924
    .local v0, "lhsExtras":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 9925
    .local v1, "rhsExtras":Landroid/os/Bundle;
    const v2, -0x383cb000    # -100000.0f

    .line 9926
    .local v2, "lhsAngle":F
    const v3, -0x383cb000    # -100000.0f

    .line 9928
    .local v3, "rhsAngle":F
    const v4, -0x383cb000    # -100000.0f

    const/4 v5, 0x0

    const-string v6, "com.samsung.intent.chooser.SHARE_UWB_DEVICE"

    const-wide v7, -0x3f07960000000000L    # -100000.0

    const-string v9, "com.samsung.intent.chooser.SHARE_UWB_AOA"

    if-eqz v0, :cond_0

    .line 9929
    invoke-virtual {v0, v9, v7, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 9931
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 9932
    .local v10, "isUWB":Z
    if-nez v10, :cond_0

    cmpl-float v11, v2, v4

    if-nez v11, :cond_0

    .line 9933
    const v2, -0x37bcb000    # -200000.0f

    .line 9937
    .end local v10    # "isUWB":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 9938
    invoke-virtual {v1, v9, v7, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 9940
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 9941
    .local v5, "isUWB":Z
    if-nez v5, :cond_1

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 9942
    const v3, -0x37bcb000    # -200000.0f

    .line 9946
    .end local v5    # "isUWB":Z
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    return v4
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 9920
    check-cast p1, Landroid/service/chooser/ChooserTarget;

    check-cast p2, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemUWBFocusComparator;->compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I

    move-result p1

    return p1
.end method
