.class public final Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->this$0:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->updateCurrentImeName()V

    return-void
.end method
