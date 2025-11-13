.class Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$2;
.super Ljava/lang/Object;
.source "BriefPopUpKeywordColorLayoutPreference.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$2;->this$1:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    if-eqz p1, :cond_0

    .line 389
    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$2;->this$1:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->-$$Nest$mupdateText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;Landroid/view/View;)V

    .line 390
    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 391
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$2;->this$1:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->-$$Nest$mfinishEdit(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
