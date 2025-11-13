.class public final synthetic Lcom/android/settings/SettingsInitialize$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/SettingsInitialize;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SettingsInitialize;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsInitialize$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/SettingsInitialize;

    iput-object p2, p0, Lcom/android/settings/SettingsInitialize$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsInitialize$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/SettingsInitialize;

    iget-object p0, p0, Lcom/android/settings/SettingsInitialize$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    sget v1, Lcom/android/settings/SettingsInitialize;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsInitialize;->refreshExistingShortcuts(Landroid/content/Context;)V

    return-void
.end method
