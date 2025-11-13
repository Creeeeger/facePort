.class public final synthetic Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    return-void
.end method
