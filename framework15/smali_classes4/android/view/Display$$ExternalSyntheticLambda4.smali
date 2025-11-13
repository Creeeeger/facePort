.class public final synthetic Landroid/view/Display$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

.field public final synthetic blacklist f$1:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/Display$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    iput-object p2, p0, Landroid/view/Display$$ExternalSyntheticLambda4;->f$1:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Landroid/view/Display$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    iget-object v1, p0, Landroid/view/Display$$ExternalSyntheticLambda4;->f$1:Landroid/view/Display$Mode;

    check-cast p1, Landroid/view/Display$Mode;

    invoke-static {v0, v1, p1}, Landroid/view/Display;->lambda$filteredSupportedModes$4(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result p1

    return p1
.end method
