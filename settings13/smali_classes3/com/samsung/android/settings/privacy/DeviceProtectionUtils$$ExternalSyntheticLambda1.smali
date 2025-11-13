.class public final synthetic Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda1;->f$1:Landroidx/core/util/Consumer;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->$r8$lambda$_CmhC199oAb4m0lhW4CdpNXfSfY(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    return-void
.end method
