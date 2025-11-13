.class public Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final COLOR_INVALID:I = 0x1

.field public static final EXTRA_NOW_BAR_KEY:Ljava/lang/String; = "android.nowBarKey"

.field public static final EXTRA_NOW_BAR_PACKAGE:Ljava/lang/String; = "android.nowBarPackage"

.field public static final EXTRA_NOW_BAR_SHOULD_REMOVE:Ljava/lang/String; = "android.nowBarShouldRemove"

.field public static final EXTRA_NOW_BAR_VIEW_STYLE:Ljava/lang/String; = "android.nowBarViewStyle"

.field public static final EXTRA_ONGOING_ACTIVITY_CARD_ICON:Ljava/lang/String; = "android.ongoingActivityCardIcon"

.field public static final EXTRA_ONGOING_ACTIVITY_CARD_ICON_BG:Ljava/lang/String; = "android.ongoingActivityCardIconBg"

.field public static final EXTRA_ONGOING_ACTIVITY_EXPANDED_NOW_BAR_VIEW:Ljava/lang/String; = "android.ongoingActivityExpandedNowBarView"

.field public static final EXTRA_ONGOING_ACTIVITY_PENDING_INTENT:Ljava/lang/String; = "android.ongoingActivityPendingIntent"

.field public static final EXTRA_ONGOING_ACTIVITY_PRIMARY_INFO:Ljava/lang/String; = "android.ongoingActivityPrimaryInfo"

.field public static final EXTRA_ONGOING_ACTIVITY_SECONDARY_INFO:Ljava/lang/String; = "android.ongoingActivitySecondaryInfo"

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final NOW_BAR_VIEW_STYLE_INVALID:I = -0x1


# instance fields
.field private actionBgColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private cardBackgroundColor:I

.field private cardIcon:Landroid/graphics/drawable/Icon;

.field private cardIconBg:I

.field private chipBackground:I

.field private chipIcon:Landroid/graphics/drawable/Icon;

.field private chronometerTag:Ljava/lang/String;

.field private chronometerView:Landroid/widget/RemoteViews;

.field private contentViewForExpandCard:Landroid/view/View;

.field private contentViewForNormalCard:Landroid/view/View;

.field private customExpandedCardView:Landroid/widget/RemoteViews;

.field private expandedChipText:Ljava/lang/CharSequence;

.field private expandedChipView:Landroid/widget/RemoteViews;

.field private extraData:Landroid/os/Bundle;

.field private faceWidgetMediaData:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;

.field private moreInfo:Ljava/lang/String;

.field private notiID:Ljava/lang/String;

.field private nowBarItemObject:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItemObject;

.field private nowBarKey:Ljava/lang/String;

.field private nowBarPackage:Ljava/lang/String;

.field private nowBarViewStyle:I

.field private nowbarIcon:Landroid/graphics/drawable/Icon;

.field private nowbarPrimaryInfo:Ljava/lang/String;

.field private nowbarSecondaryInfo:Ljava/lang/String;

.field private ongoingExpandView:Landroid/widget/RemoteViews;

.field private ongoingNowbarView:Landroid/widget/RemoteViews;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private primaryActionNum:I

.field private primaryInfo:Ljava/lang/String;

.field private primaryInfoColor:I

.field private secondaryInfo:Ljava/lang/String;

.field private secondaryInfoColor:I

.field private shouldRemoveCard:Ljava/lang/Boolean;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->notiID:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->pendingIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipView:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipBackground:I

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actions:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actionBgColors:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryActionNum:I

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIcon:Landroid/graphics/drawable/Icon;

    iput v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIconBg:I

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfo:Ljava/lang/String;

    iput v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfoColor:I

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfo:Ljava/lang/String;

    iput v3, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfoColor:I

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->moreInfo:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->customExpandedCardView:Landroid/widget/RemoteViews;

    iput v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardBackgroundColor:I

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarPackage:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarViewStyle:I

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->faceWidgetMediaData:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipText:Ljava/lang/CharSequence;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->shouldRemoveCard:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->contentViewForNormalCard:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarPrimaryInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarSecondaryInfo:Ljava/lang/String;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->userId:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->extraData:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarItemObject:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItemObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "android.ongoingActivityPendingIntent"

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setPendingIntent(Landroid/app/PendingIntent;)V

    const-string v0, "android.nowBarKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarKey(Ljava/lang/String;)V

    const-string v0, "android.nowBarPackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    const-string v0, "android.nowBarViewStyle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarViewStyle(I)V

    const-string v0, "android.ongoingActivityCardIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setCardIcon(Landroid/graphics/drawable/Icon;)V

    const-string v0, "android.ongoingActivityCardIconBg"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setCardIconBg(I)V

    const-string v0, "android.ongoingActivityPrimaryInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setPrimaryInfo(Ljava/lang/String;)V

    const-string v0, "android.ongoingActivitySecondaryInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setSecondaryInfo(Ljava/lang/String;)V

    const-string v0, "android.ongoingActivityExpandedNowBarView"

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setOngoingExpandView(Landroid/widget/RemoteViews;)V

    const-string v0, "android.nowBarShouldRemove"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setShouldRemoveCard(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "receivedIntent exception = "

    const-string v0, "NowBarItem"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActionBgColors()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actionBgColors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getActions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getCardBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardBackgroundColor:I

    return p0
.end method

.method public getCardIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getCardIconBg()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIconBg:I

    return p0
.end method

.method public getChipBackground()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipBackground:I

    return p0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getChronometerTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chronometerTag:Ljava/lang/String;

    return-object p0
.end method

.method public getChronometerView()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chronometerView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getContentViewForExpandCard()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->contentViewForExpandCard:Landroid/view/View;

    return-object p0
.end method

.method public getContentViewForNormalCard()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->contentViewForNormalCard:Landroid/view/View;

    return-object p0
.end method

.method public getCustomExpandedCardView()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->customExpandedCardView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getExpandedChipText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getExpandedChipView()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->extraData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getFaceWidgetMediaData()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->faceWidgetMediaData:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;

    return-object p0
.end method

.method public getMoreInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->moreInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->notiID:Ljava/lang/String;

    return-object p0
.end method

.method public getNowBarKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarKey:Ljava/lang/String;

    return-object p0
.end method

.method public getNowBarPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getNowBarViewStyle()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarViewStyle:I

    return p0
.end method

.method public getNowbarIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getNowbarPrimaryInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarPrimaryInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getNowbarSecondaryInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarSecondaryInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getObject()Lcom/android/systemui/plugins/keyguardstatusview/NowBarItemObject;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarItemObject:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItemObject;

    return-object p0
.end method

.method public getOngoingExpandView()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->ongoingExpandView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getOngoingNowbarView()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->ongoingNowbarView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->pendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getPrimaryActionNum()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryActionNum:I

    return p0
.end method

.method public getPrimaryInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryInfoColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfoColor:I

    return p0
.end method

.method public getSecondaryInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryInfoColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfoColor:I

    return p0
.end method

.method public getShouldRemoveCard()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->shouldRemoveCard:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->userId:I

    return p0
.end method

.method public setActionBgColors(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actionBgColors:Ljava/util/ArrayList;

    return-void
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actions:Ljava/util/ArrayList;

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardBackgroundColor:I

    return-void
.end method

.method public setCardIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setCardIconBg(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIconBg:I

    return-void
.end method

.method public setChipBackground(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipBackground:I

    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setChronometerTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chronometerTag:Ljava/lang/String;

    return-void
.end method

.method public setChronometerView(Landroid/widget/RemoteViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chronometerView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public setContentViewForExpandCard(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->contentViewForExpandCard:Landroid/view/View;

    return-void
.end method

.method public setContentViewForNormalCard(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->contentViewForNormalCard:Landroid/view/View;

    return-void
.end method

.method public setCustomExpandedCardView(Landroid/widget/RemoteViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->customExpandedCardView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public setExpandedChipText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setExpandedChipView(Landroid/widget/RemoteViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public setExtraData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->extraData:Landroid/os/Bundle;

    return-void
.end method

.method public setFaceWidgetMediaData(Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->faceWidgetMediaData:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;

    return-void
.end method

.method public setMoreInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->moreInfo:Ljava/lang/String;

    return-void
.end method

.method public setNotiID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->notiID:Ljava/lang/String;

    return-void
.end method

.method public setNowBarKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarKey:Ljava/lang/String;

    return-void
.end method

.method public setNowBarPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarPackage:Ljava/lang/String;

    return-void
.end method

.method public setNowBarViewStyle(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarViewStyle:I

    return-void
.end method

.method public setNowbarIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setNowbarPrimaryInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarPrimaryInfo:Ljava/lang/String;

    return-void
.end method

.method public setNowbarSecondaryInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowbarSecondaryInfo:Ljava/lang/String;

    return-void
.end method

.method public setObject(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItemObject;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarItemObject:Lcom/android/systemui/plugins/keyguardstatusview/NowBarItemObject;

    return-void
.end method

.method public setOngoingExpandView(Landroid/widget/RemoteViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->ongoingExpandView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public setOngoingNowbarView(Landroid/widget/RemoteViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->ongoingNowbarView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setPrimaryActionNum(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryActionNum:I

    return-void
.end method

.method public setPrimaryInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfo:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryInfoColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfoColor:I

    return-void
.end method

.method public setSecondaryInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfo:Ljava/lang/String;

    return-void
.end method

.method public setSecondaryInfoColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfoColor:I

    return-void
.end method

.method public setShouldRemoveCard(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->shouldRemoveCard:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NowBarItem{notiID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->notiID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nowBarKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nowBarPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nowBarViewStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->nowBarViewStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chipIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedChipView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chipBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chipBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionBgColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->actionBgColors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryActionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryActionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardIconBg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardIconBg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryInfoColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->primaryInfoColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryInfoColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->secondaryInfoColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", moreInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->moreInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customExpandedCardView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->customExpandedCardView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->cardBackgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", faceWidgetMediaData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->faceWidgetMediaData:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedChipText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->expandedChipText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chronometerView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chronometerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chronometerTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->chronometerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldRemoveCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->shouldRemoveCard:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentViewForNormalCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->contentViewForNormalCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentViewForExpandCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->contentViewForExpandCard:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
