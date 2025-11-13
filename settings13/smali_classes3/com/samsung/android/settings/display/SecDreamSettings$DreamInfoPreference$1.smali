.class Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

.field final synthetic val$holder:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method
