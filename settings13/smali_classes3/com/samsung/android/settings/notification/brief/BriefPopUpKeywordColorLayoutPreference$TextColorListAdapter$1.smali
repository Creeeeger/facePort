.class Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$1;
.super Ljava/lang/Object;
.source "BriefPopUpKeywordColorLayoutPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 374
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter$1;->this$1:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 377
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
