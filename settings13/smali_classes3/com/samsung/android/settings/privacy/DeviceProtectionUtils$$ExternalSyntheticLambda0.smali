.class public final synthetic Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->$r8$lambda$mMUC-YVtXClD-Y4Br_U0faLmRWY(Landroidx/core/util/Consumer;Landroid/content/Context;)V

    return-void
.end method
