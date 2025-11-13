.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 129
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-eq p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x6

    if-eq p2, p0, :cond_1

    const/4 p0, 0x5

    if-ne p2, p0, :cond_2

    :cond_1
    const-string p0, "ZenModeSettings"

    const-string p1, "Enter pressed"

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
