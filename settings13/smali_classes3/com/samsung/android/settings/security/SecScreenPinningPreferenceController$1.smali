.class Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecScreenPinningPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecScreenPinningPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
