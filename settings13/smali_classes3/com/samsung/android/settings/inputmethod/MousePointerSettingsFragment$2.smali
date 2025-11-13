.class Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;
.super Landroid/database/ContentObserver;
.source "MousePointerSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment$2;->this$0:Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;->-$$Nest$mupdatePointerSize(Lcom/samsung/android/settings/inputmethod/MousePointerSettingsFragment;)V

    return-void
.end method
