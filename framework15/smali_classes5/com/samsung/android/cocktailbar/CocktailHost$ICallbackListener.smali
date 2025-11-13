.class public interface abstract Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallbackListener"
.end annotation


# virtual methods
.method public abstract blacklist onChangeVisibleEdgeService(ZI)V
.end method

.method public abstract blacklist onCloseCocktail(III)V
.end method

.method public abstract blacklist onNotePauseComponent(Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist onNoteResumeComponent(Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist onNotifyKeyguardState(ZI)V
.end method

.method public abstract blacklist onNotifyWakeUpModeState(ZII)V
.end method

.method public abstract blacklist onPackageSuspendChanged(Lcom/samsung/android/cocktailbar/Cocktail;)V
.end method

.method public abstract blacklist onPartiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
.end method

.method public abstract blacklist onPartiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V
.end method

.method public abstract blacklist onRemoveCocktail(II)V
.end method

.method public abstract blacklist onSendExtraDataToCocktailBar(Landroid/os/Bundle;I)V
.end method

.method public abstract blacklist onSetDisableTickerView(II)V
.end method

.method public abstract blacklist onSetPullToRefresh(IILandroid/app/PendingIntent;)V
.end method

.method public abstract blacklist onShowCocktail(II)V
.end method

.method public abstract blacklist onSwitchDefaultCocktail(I)V
.end method

.method public abstract blacklist onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
.end method

.method public abstract blacklist onUpdateToolLauncher(I)V
.end method

.method public abstract blacklist onViewDataChanged(III)V
.end method
