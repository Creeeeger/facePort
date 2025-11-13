.class public Lcom/samsung/android/settings/bixby/target/NightTheme;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "NightTheme.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/NightTheme;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NightTheme;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightModeSetting(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NightTheme;->context:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setNightModeSetting(Landroid/content/Context;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
