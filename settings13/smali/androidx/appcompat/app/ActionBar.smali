.class public abstract Landroidx/appcompat/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBar$LayoutParams;,
        Landroidx/appcompat/app/ActionBar$Tab;,
        Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract collapseActionView()Z
.end method

.method public abstract dispatchMenuVisibilityChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public abstract hide()V
.end method

.method public invalidateOptionsMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    return-void
.end method

.method onDestroy()V
    .locals 0

    return-void
.end method

.method public abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "ev"
        }
    .end annotation
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public openOptionsMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation
.end method

.method public abstract setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "layoutParams"
        }
    .end annotation
.end method

.method public abstract setDefaultDisplayHomeAsUpEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showHomeAsUp"
        }
    .end annotation
.end method

.method public abstract setDisplayOptions(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation
.end method

.method public abstract setDisplayOptions(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "options",
            "mask"
        }
    .end annotation
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showCustom"
        }
    .end annotation
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTitle"
        }
    .end annotation
.end method

.method public abstract setHomeButtonEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setShowHideAnimationEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subtitle"
        }
    .end annotation
.end method

.method public abstract setTitle(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
