.class Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CurrentKeyboardPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;

    .line 117
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 118
    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->-$$Nest$mupdateCurrentImeName(Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    .line 129
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "selected_input_method_subtype"

    .line 130
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
