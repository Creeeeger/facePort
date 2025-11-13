.class Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;
.super Ljava/lang/Object;
.source "MouseCustomPointerColorPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    iput p2, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 117
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mPointerColorList:[I

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->val$position:I

    aget v0, v0, v1

    const-string v1, "mouse_pointer_color"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;->mPointerColorList:[I

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->val$position:I

    aget p1, p1, v0

    int-to-long v0, p1

    const p1, 0xbc039

    const v2, 0x12cdb

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter$1;->this$1:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
