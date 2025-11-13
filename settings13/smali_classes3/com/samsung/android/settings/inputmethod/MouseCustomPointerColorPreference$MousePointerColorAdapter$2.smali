.class Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "MouseCustomPointerColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;Z)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$2;->this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    iput-boolean p2, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$2;->val$isChecked:Z

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 p1, 0x1

    .line 130
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 131
    iget-boolean p0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$2;->val$isChecked:Z

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
