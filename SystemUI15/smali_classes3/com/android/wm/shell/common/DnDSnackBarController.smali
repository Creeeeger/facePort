.class public final Lcom/android/wm/shell/common/DnDSnackBarController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSnackBarPref:Landroid/content/SharedPreferences;

.field public mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

.field public mWasShownSnackBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "snack_bar_pref_name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mSnackBarPref:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "snack_bar_shown"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mWasShownSnackBar:Z

    return-void
.end method
