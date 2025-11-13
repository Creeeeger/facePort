.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final greylist-max-o EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final greylist-max-o EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final greylist-max-o LIGHTNESS_TEXT_DIFFERENCE_DARK:I = -0xa

.field private static final greylist-max-o LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I = 0x14

.field private static final greylist-max-o USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private greylist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field blacklist mColors:Landroid/app/Notification$Colors;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mInNightMode:Z

.field private greylist-max-o mIsLegacy:Z

.field private greylist-max-o mIsLegacyInitialized:Z

.field private greylist-max-o mN:Landroid/app/Notification;

.field greylist-max-o mParams:Landroid/app/Notification$StandardTemplateParams;

.field private greylist-max-o mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStyle:Landroid/app/Notification$Style;

.field private greylist-max-o mTintActionButtons:Z

.field private greylist-max-o mUserExtras:Landroid/os/Bundle;


# direct methods
.method public static synthetic blacklist $r8$lambda$YIF3DeoHHMcbP21iJ8acsZqzsyQ(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getDefaultProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigMessagingLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigPictureLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigTextLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetConversationLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInboxLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMessagingLayoutResource(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStandardActionColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misCallActionColorCustomizable(Landroid/app/Notification$Builder;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isCallActionColorCustomizable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessTextSpans(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetTextViewColorPrimary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetHeaderlessVerticalMargins(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 3887
    nop

    .line 3888
    const-string/jumbo v0, "notifications.only_title"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 3887
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3947
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3948
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    .line 3953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3905
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 3907
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 3909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 3918
    new-instance v0, Landroid/app/Notification$StandardTemplateParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$StandardTemplateParams-IA;)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 3919
    new-instance v0, Landroid/app/Notification$Colors;

    invoke-direct {v0}, Landroid/app/Notification$Colors;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    .line 3954
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3955
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3956
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11101e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 3958
    const v1, 0x1110143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3959
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3960
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 3964
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    :cond_1
    if-nez p2, :cond_3

    .line 3965
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3966
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_2

    .line 3967
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.showWhen"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3969
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, v1, Landroid/app/Notification;->priority:I

    .line 3970
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, v1, Landroid/app/Notification;->visibility:I

    goto/16 :goto_1

    .line 3972
    :cond_3
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3973
    iget-object v1, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_4

    .line 3974
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3977
    :cond_4
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3978
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3980
    .local v1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 3981
    iget-object v4, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3985
    .end local v1    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_5
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-eqz v1, :cond_6

    .line 3986
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3989
    :cond_6
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 3990
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 3993
    :cond_7
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3994
    .local v1, "templateClass":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3995
    nop

    .line 3996
    invoke-static {v1}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3997
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-string v5, "Notification"

    if-nez v4, :cond_8

    .line 3998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown style class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4001
    :cond_8
    :try_start_0
    new-array v6, v3, [Ljava/lang/Class;

    .line 4002
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 4003
    .local v6, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4004
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Style;

    .line 4005
    .local v2, "style":Landroid/app/Notification$Style;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4007
    if-eqz v2, :cond_9

    .line 4008
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4012
    .end local v2    # "style":Landroid/app/Notification$Style;
    .end local v6    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    :cond_9
    goto :goto_1

    .line 4010
    :catchall_0
    move-exception v2

    .line 4011
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "Could not create Style"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4016
    .end local v1    # "templateClass":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_a
    :goto_1
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 3937
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3938
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p2}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 3939
    return-void
.end method

.method private greylist-max-o applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "resId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 5304
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 5305
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 5306
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_1

    const v0, 0x10900d5

    if-eq p1, v0, :cond_1

    const v0, 0x10900d0

    if-eq p1, v0, :cond_1

    const v0, 0x10900d9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5304
    :goto_1
    invoke-virtual {p2, v0}, Landroid/app/Notification$StandardTemplateParams;->headerless(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 5311
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 5313
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 5315
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5316
    .local v2, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5317
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5318
    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 5319
    invoke-direct {p0, v0, v2, p2}, Landroid/app/Notification$Builder;->handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v3

    .line 5320
    .local v3, "showProgress":Z
    move v4, v3

    .line 5321
    .local v4, "hasSecondLine":Z
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v5, :cond_2

    .line 5322
    iget v5, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5323
    iget v5, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    iget-object v8, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5324
    iget v5, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-direct {p0, v0, v5, p2}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_2

    .line 5325
    :cond_2
    iget v5, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    const v8, 0x1020016

    if-eq v5, v8, :cond_3

    .line 5327
    iget v5, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5328
    iget v5, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5330
    :cond_3
    :goto_2
    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    iget-boolean v5, p2, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    if-eqz v5, :cond_5

    .line 5332
    :cond_4
    iget v5, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5333
    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5334
    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-direct {p0, v0, v1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5335
    const/4 v4, 0x1

    goto :goto_3

    .line 5336
    :cond_5
    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    const v5, 0x1020616

    if-eq v1, v5, :cond_6

    .line 5338
    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5339
    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5342
    :cond_6
    :goto_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2, v4}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 5344
    return-object v0
.end method

.method private greylist-max-o applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 16
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 5895
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 5897
    .local v8, "big":Landroid/widget/RemoteViews;
    invoke-direct {v0, v8}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 5898
    invoke-direct {v0, v8, v1}, Landroid/app/Notification$Builder;->bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5900
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 5901
    .local v9, "actionColor":Landroid/content/res/ColorStateList;
    const v2, 0x10205cb

    const-string/jumbo v3, "setImageTintList"

    invoke-virtual {v8, v2, v3, v9}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 5902
    const v2, 0x102022a

    invoke-virtual {v8, v2, v3, v9}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 5904
    const/4 v10, 0x0

    .line 5908
    .local v10, "validRemoteInput":Z
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->getNonContextualActions()Ljava/util/List;

    move-result-object v11

    .line 5910
    .local v11, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x3

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 5915
    .local v13, "numActions":I
    const/4 v14, 0x0

    .line 5917
    .local v14, "emphazisedMode":Z
    iget-boolean v2, v1, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    const v15, 0x10201c9

    if-eqz v2, :cond_0

    .line 5920
    const v3, 0x10201c9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 5923
    const v2, 0x105004f

    const-string/jumbo v3, "setCollapsibleIndentDimen"

    invoke-virtual {v8, v15, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5926
    :cond_0
    const-string/jumbo v2, "setEmphasizedMode"

    invoke-virtual {v8, v15, v2, v14}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5927
    const v3, 0x10201ca

    const/4 v4, 0x0

    if-lez v13, :cond_3

    iget-boolean v5, v1, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    if-nez v5, :cond_3

    .line 5928
    invoke-virtual {v8, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5929
    invoke-virtual {v8, v15, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5930
    const v3, 0x1020449

    invoke-virtual {v8, v3, v12, v4}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 5932
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v13, :cond_2

    .line 5933
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$Action;

    .line 5935
    .local v5, "action":Landroid/app/Notification$Action;
    invoke-direct {v0, v5}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v6

    .line 5936
    .local v6, "actionHasValidInput":Z
    or-int/2addr v10, v6

    .line 5938
    invoke-direct {v0, v5, v14, v1}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 5939
    .local v7, "button":Landroid/widget/RemoteViews;
    nop

    .line 5945
    if-eqz v14, :cond_1

    if-lez v3, :cond_1

    .line 5948
    const v12, 0x10201af

    const/4 v2, 0x4

    invoke-virtual {v7, v12, v2, v4}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 5950
    :cond_1
    invoke-virtual {v8, v15, v7}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 5932
    .end local v5    # "action":Landroid/app/Notification$Action;
    .end local v6    # "actionHasValidInput":Z
    .end local v7    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .end local v3    # "i":I
    goto :goto_1

    .line 5953
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5956
    :goto_1
    iget-object v3, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v5, Landroid/app/RemoteInputHistoryItem;

    const-string v6, "android.remoteInputHistoryItems"

    invoke-static {v3, v6, v5}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Landroid/app/RemoteInputHistoryItem;

    .line 5958
    .local v3, "replyText":[Landroid/app/RemoteInputHistoryItem;
    if-eqz v10, :cond_5

    if-eqz v3, :cond_5

    array-length v5, v3

    if-lez v5, :cond_5

    aget-object v5, v3, v4

    .line 5959
    invoke-virtual {v5}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-lez v5, :cond_5

    .line 5961
    iget-object v5, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.remoteInputSpinner"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 5962
    .local v5, "showSpinner":Z
    const v6, 0x102044f

    invoke-virtual {v8, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5963
    const v6, 0x1020452

    invoke-virtual {v8, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5965
    aget-object v6, v3, v4

    .line 5966
    invoke-virtual {v6}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 5965
    const v7, 0x1020451

    invoke-virtual {v8, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5967
    invoke-direct {v0, v8, v7, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5968
    nop

    .line 5969
    if-eqz v5, :cond_4

    move v2, v4

    .line 5968
    :cond_4
    const v6, 0x1020450

    invoke-virtual {v8, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5970
    nop

    .line 5972
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 5970
    invoke-virtual {v8, v6, v2}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 5974
    array-length v2, v3

    const/4 v6, 0x1

    if-le v2, v6, :cond_5

    aget-object v2, v3, v6

    invoke-virtual {v2}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v2, v6, :cond_5

    .line 5976
    const v2, 0x1020453

    invoke-virtual {v8, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5977
    aget-object v6, v3, v6

    .line 5978
    invoke-virtual {v6}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 5977
    invoke-virtual {v8, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5979
    invoke-direct {v0, v8, v2, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5981
    array-length v2, v3

    const/4 v6, 0x2

    if-le v2, v6, :cond_5

    aget-object v2, v3, v6

    invoke-virtual {v2}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v2, v6, :cond_5

    .line 5983
    const v2, 0x1020454

    invoke-virtual {v8, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5985
    aget-object v4, v3, v6

    .line 5986
    invoke-virtual {v4}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5985
    invoke-virtual {v8, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5987
    invoke-direct {v0, v8, v2, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5992
    .end local v5    # "showSpinner":Z
    :cond_5
    return-object v8
.end method

.method private blacklist bigContentViewRequired()Z
    .locals 3

    .line 6164
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 6165
    return v1

    .line 6170
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6172
    .local v0, "exempt":Z
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5244
    nop

    .line 5247
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 5244
    const v2, 0x10201dd

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5249
    return-void
.end method

.method private blacklist bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5612
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 5613
    .local v0, "bgColor":I
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getProtectionColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v1

    .line 5614
    .local v1, "pillColor":I
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v2

    .line 5615
    .local v2, "textColor":I
    nop

    .line 5617
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getThirdTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    .line 5615
    :goto_0
    const v4, 0x10202d7

    const-string/jumbo v5, "setDefaultTextColor"

    invoke-virtual {p1, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5618
    const-string/jumbo v3, "setDefaultPillColor"

    invoke-virtual {p1, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5620
    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    if-eqz v3, :cond_1

    .line 5621
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getTertiaryAccentColor()I

    move-result v3

    invoke-static {v3, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v1

    .line 5622
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getOnAccentTextColor()I

    move-result v3

    invoke-static {v3, v1}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v2

    .line 5624
    :cond_1
    nop

    .line 5626
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    .line 5624
    const-string/jumbo v5, "setHighlightTextColor"

    invoke-virtual {p1, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5627
    const-string/jumbo v3, "setHighlightPillColor"

    invoke-virtual {p1, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5630
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x105025f

    if-eq v3, v5, :cond_3

    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER_EXPANDED:I

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 5635
    :cond_2
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    if-eq v3, v5, :cond_4

    .line 5636
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/app/Notification;->-$$Nest$smgetFontScaledHeight(Landroid/content/Context;I)I

    move-result v3

    .line 5637
    .local v3, "marginDimen":I
    int-to-float v5, v3

    invoke-virtual {p1, v4, v7, v5, v6}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    goto :goto_2

    .line 5632
    .end local v3    # "marginDimen":I
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/app/Notification;->-$$Nest$smgetFontScaledMarginHeight(Landroid/content/Context;I)I

    move-result v3

    .line 5633
    .restart local v3    # "marginDimen":I
    int-to-float v5, v3

    invoke-virtual {p1, v4, v7, v5, v6}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 5635
    .end local v3    # "marginDimen":I
    :cond_4
    nop

    .line 5640
    :goto_2
    return-void
.end method

.method private blacklist bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "force"    # Z

    .line 5773
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_0

    .line 5775
    return v2

    .line 5777
    :cond_0
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5780
    return v1

    .line 5782
    :cond_1
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-eqz v0, :cond_2

    .line 5785
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v0

    return v0

    .line 5787
    :cond_2
    const v0, 0x10201f9

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5788
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5789
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5790
    return v1
.end method

.method private blacklist bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "hasTextToLeft"    # Z

    .line 5644
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    const-string/jumbo v1, "setTime"

    const v2, 0x1020638

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5645
    if-eqz p3, :cond_0

    .line 5647
    const/16 v0, 0x8

    const v3, 0x102063c

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5648
    invoke-direct {p0, p1, v3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5650
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showChronometer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 5651
    const v0, 0x1020258

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5652
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v1, v1, Landroid/app/Notification;->when:J

    .line 5653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 5652
    const-string/jumbo v3, "setBase"

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 5654
    const/4 v1, 0x1

    const-string/jumbo v2, "setStarted"

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5655
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5656
    .local v1, "countsDown":Z
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 5657
    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5658
    .end local v1    # "countsDown":Z
    goto :goto_1

    .line 5659
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5660
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v4, v0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 5661
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5663
    const/4 v0, 0x4

    invoke-virtual {p1, v2, v0, v3}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_1

    .line 5668
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetcreationTime(Landroid/app/Notification;)J

    move-result-wide v3

    :goto_0
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 5669
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5671
    :goto_1
    return-void
.end method

.method private blacklist bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "hasTextToLeft"    # Z

    .line 5678
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5679
    return v1

    .line 5681
    :cond_0
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 5682
    .local v0, "summaryText":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5683
    invoke-virtual {v2}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5684
    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v2, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 5686
    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5687
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5688
    const-string v3, "android.infoText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5689
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5691
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5693
    nop

    .line 5694
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5693
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x1020339

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5695
    invoke-direct {p0, p1, v3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5696
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5697
    if-eqz p3, :cond_3

    .line 5699
    const/16 v1, 0x8

    const v2, 0x102033a

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5700
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_0

    .line 5703
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p1, v3, v2, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 5705
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 5707
    :cond_4
    return v1
.end method

.method private blacklist bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "hasTextToLeft"    # Z

    .line 5715
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5716
    return v1

    .line 5718
    :cond_0
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5719
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 5720
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5719
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x102033b

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5721
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5722
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5723
    if-eqz p3, :cond_1

    .line 5725
    const/16 v0, 0x8

    const v1, 0x102033c

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5726
    invoke-direct {p0, p1, v1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 5728
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 5730
    :cond_2
    return v1
.end method

.method private blacklist bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 5518
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 5519
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 5523
    :cond_0
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 5524
    .local v0, "leftIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    .line 5525
    :cond_2
    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_3

    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :goto_1
    nop

    .line 5528
    .local v2, "rightIcon":Landroid/graphics/drawable/Icon;
    const v3, 0x1020609

    const v4, 0x10203ac

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 5536
    :cond_4
    invoke-virtual {p1, v4, v3, v5}, Landroid/widget/RemoteViews;->setIntTag(III)V

    goto :goto_3

    .line 5531
    :cond_5
    :goto_2
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5532
    invoke-virtual {p1, v4, v3, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 5540
    :goto_3
    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_4

    :cond_6
    move v3, v6

    .line 5541
    .local v3, "isPromotedPicture":Z
    :goto_4
    invoke-direct {p0, v2, v3, p3}, Landroid/app/Notification$Builder;->calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V

    .line 5544
    const v4, 0x1020603

    const v7, 0x10204f7

    if-eqz v2, :cond_a

    .line 5545
    iget v1, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    invoke-virtual {p1, v7, v1, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 5547
    iget v1, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    invoke-virtual {p1, v7, v1, v5}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 5549
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5552
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v8, 0x4

    if-eq v1, v8, :cond_7

    .line 5553
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v8

    if-ne v1, v8, :cond_8

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v8, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    if-ne v1, v8, :cond_8

    .line 5555
    :cond_7
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x105029f

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5556
    .local v1, "rightIconSize":I
    const-string/jumbo v8, "setMaxDrawableWidth"

    invoke-virtual {p1, v7, v8, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5557
    const-string/jumbo v8, "setMaxDrawableHeight"

    invoke-virtual {p1, v7, v8, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5561
    .end local v1    # "rightIconSize":I
    :cond_8
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5562
    nop

    .line 5563
    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    move v5, v6

    .line 5562
    :goto_5
    invoke-virtual {p1, v7, v4, v5}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 5564
    invoke-direct {p0, v2, p1, p2}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_6

    .line 5569
    :cond_a
    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5570
    invoke-virtual {p1, v7, v4, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 5572
    :goto_6
    return-void
.end method

.method private blacklist bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 5463
    if-nez p3, :cond_0

    .line 5464
    new-instance v0, Landroid/app/Notification$TemplateBindResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    move-object p3, v0

    .line 5466
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 5467
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez v0, :cond_1

    .line 5469
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v1, 0x102044b

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 5470
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v1, 0x1020016

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 5472
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 5473
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "setNumIndentLines"

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5475
    :cond_1
    return-void
.end method

.method private blacklist bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5576
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER_EXPANDED:I

    if-eq v0, v1, :cond_0

    .line 5577
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5582
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v1

    .line 5583
    .local v1, "hasTextToLeft":Z
    invoke-direct {p0, p1, p2, v1}, Landroid/app/Notification$Builder;->bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 5584
    invoke-direct {p0, p1, p2, v1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 5585
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 5587
    invoke-direct {p0, p1, p2, v2}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 5589
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 5590
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5591
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5592
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5593
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5596
    iget v3, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v4, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    if-ne v3, v4, :cond_2

    .line 5597
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v4, 0x1050271

    invoke-static {v3, v4}, Landroid/app/Notification;->-$$Nest$smgetFontScaledHeight(Landroid/content/Context;I)I

    move-result v3

    .line 5598
    .local v3, "marginDimen":I
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050272

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 5599
    .local v4, "shadowMarginDimen":I
    const v5, 0x10203ac

    int-to-float v6, v3

    invoke-virtual {p1, v5, v2, v6, v0}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 5601
    const v5, 0x1020006

    int-to-float v6, v3

    invoke-virtual {p1, v5, v2, v6, v0}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 5603
    const v5, 0x102032f

    add-int v6, v3, v4

    int-to-float v6, v6

    invoke-virtual {p1, v5, v2, v6, v0}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 5607
    .end local v3    # "marginDimen":I
    .end local v4    # "shadowMarginDimen":I
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v2}, Landroid/app/Notification;->-$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V

    .line 5608
    return-void
.end method

.method private blacklist bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5185
    nop

    .line 5188
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getErrorColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5185
    const v2, 0x1020496

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5190
    return-void
.end method

.method private blacklist bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5231
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5233
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 5234
    const v1, 0x10204b9

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 5235
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5236
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5237
    nop

    .line 5238
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5237
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5241
    :cond_0
    return-void
.end method

.method private blacklist bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5812
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 5813
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget v2, v0, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 5815
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5816
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    const-string/jumbo v2, "setImageLevel"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5817
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5818
    return-void
.end method

.method private blacklist bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 6
    .param p1, "big"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5850
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 5851
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 5853
    .local v0, "hideSnoozeButton":Z
    :goto_1
    if-nez v0, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const v4, 0x10205cb

    const-string/jumbo v5, "setEnabled"

    invoke-virtual {p1, v4, v5, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5854
    if-eqz v0, :cond_3

    .line 5856
    const/16 v3, 0x8

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5859
    :cond_3
    if-nez v0, :cond_4

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5860
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5861
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isSnoozeSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 5862
    .local v1, "snoozeEnabled":Z
    :goto_3
    if-eqz v1, :cond_5

    .line 5863
    const v3, 0x1020449

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 5866
    :cond_5
    return-void
.end method

.method private blacklist calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V
    .locals 16
    .param p1, "rightIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "isPromotedPicture"    # Z
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 5484
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5485
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 5486
    .local v3, "density":F
    const v4, 0x105029c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v3

    .line 5488
    .local v4, "iconMarginDp":F
    const v5, 0x1050260

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float/2addr v5, v3

    .line 5490
    .local v5, "contentMarginDp":F
    const v6, 0x1050276

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float/2addr v6, v3

    sub-float/2addr v6, v5

    .line 5492
    .local v6, "expanderSizeDp":F
    const v7, 0x105029f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float v13, v7, v3

    .line 5494
    .local v13, "viewHeightDp":F
    move v7, v13

    .line 5495
    .local v7, "viewWidthDp":F
    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    iget-object v8, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5496
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1f

    if-lt v8, v9, :cond_1

    .line 5497
    :cond_0
    iget-object v8, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5498
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1

    .line 5499
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 5500
    .local v9, "iconWidth":I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 5501
    .local v10, "iconHeight":I
    if-le v9, v10, :cond_1

    if-lez v10, :cond_1

    .line 5502
    const v11, 0x3fe38e39

    mul-float/2addr v11, v13

    .line 5503
    .local v11, "maxViewWidthDp":F
    int-to-float v12, v9

    mul-float/2addr v12, v13

    int-to-float v14, v10

    div-float/2addr v12, v14

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v14, v7

    goto :goto_0

    .line 5508
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "iconWidth":I
    .end local v10    # "iconHeight":I
    .end local v11    # "maxViewWidthDp":F
    :cond_1
    move v14, v7

    .end local v7    # "viewWidthDp":F
    .local v14, "viewWidthDp":F
    :goto_0
    add-float v15, v14, v4

    .line 5509
    .local v15, "extraMarginEndDpIfVisible":F
    if-eqz v1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move v8, v7

    move-object/from16 v7, p3

    move v9, v14

    move v10, v13

    move v11, v15

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/app/Notification$TemplateBindResult;->setRightIconState(ZFFFF)V

    .line 5511
    return-void
.end method

.method private greylist-max-o createSummaryText()Ljava/lang/CharSequence;
    .locals 6

    .line 6384
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6385
    .local v0, "titleText":Ljava/lang/CharSequence;
    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v1, :cond_0

    .line 6386
    return-object v0

    .line 6388
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6389
    .local v1, "summary":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_1

    .line 6390
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6392
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 6393
    .local v2, "bidi":Landroid/text/BidiFormatter;
    if-eqz v0, :cond_2

    .line 6394
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6396
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 6397
    .local v3, "contentText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 6398
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v5, 0x104087c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6401
    :cond_3
    if-eqz v3, :cond_4

    .line 6402
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6404
    :cond_4
    return-object v1
.end method

.method public static blacklist ensureButtonFillContrast(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "bg"    # I

    .line 6607
    invoke-static {p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v0

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 6608
    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_0

    .line 6609
    :cond_0
    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 6607
    :goto_0
    return v0
.end method

.method public static blacklist ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 24
    .param p0, "charSequence"    # Ljava/lang/CharSequence;
    .param p1, "background"    # I

    .line 6524
    move-object/from16 v0, p0

    move/from16 v1, p1

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_a

    .line 6525
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 6526
    .local v2, "ss":Landroid/text/Spanned;
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 6527
    .local v3, "spans":[Ljava/lang/Object;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6528
    .local v4, "builder":Landroid/text/SpannableStringBuilder;
    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_9

    aget-object v8, v3, v7

    .line 6529
    .local v8, "span":Ljava/lang/Object;
    move-object v9, v8

    .line 6530
    .local v9, "resultSpan":Ljava/lang/Object;
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 6531
    .local v10, "spanStart":I
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 6532
    .local v11, "spanEnd":I
    sub-int v12, v11, v10

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    move v12, v5

    .line 6533
    .local v12, "fullLength":Z
    :goto_1
    instance-of v13, v9, Landroid/text/style/CharacterStyle;

    if-eqz v13, :cond_1

    .line 6534
    move-object v13, v8

    check-cast v13, Landroid/text/style/CharacterStyle;

    invoke-virtual {v13}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v9

    .line 6536
    :cond_1
    instance-of v13, v9, Landroid/text/style/TextAppearanceSpan;

    if-eqz v13, :cond_5

    .line 6537
    move-object v13, v9

    check-cast v13, Landroid/text/style/TextAppearanceSpan;

    .line 6538
    .local v13, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 6539
    .local v14, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v14, :cond_4

    .line 6540
    if-eqz v12, :cond_2

    .line 6542
    const/4 v14, 0x0

    move-object/from16 v17, v3

    move/from16 v16, v6

    goto :goto_3

    .line 6544
    :cond_2
    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v15

    .line 6545
    .local v15, "colors":[I
    array-length v5, v15

    new-array v5, v5, [I

    .line 6546
    .local v5, "newColors":[I
    const/16 v16, 0x0

    move-object/from16 v17, v3

    move/from16 v3, v16

    .local v3, "i":I
    .local v17, "spans":[Ljava/lang/Object;
    :goto_2
    move/from16 v16, v6

    array-length v6, v5

    if-ge v3, v6, :cond_3

    .line 6547
    invoke-static/range {p1 .. p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v6

    .line 6548
    .local v6, "isBgDark":Z
    aget v0, v15, v3

    invoke-static {v0, v1, v6}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v0

    aput v0, v5, v3

    .line 6546
    .end local v6    # "isBgDark":Z
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v6, v16

    goto :goto_2

    .line 6551
    .end local v3    # "i":I
    :cond_3
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v3

    invoke-virtual {v3}, [[I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    invoke-direct {v0, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v14, v0

    .line 6554
    .end local v5    # "newColors":[I
    .end local v15    # "colors":[I
    :goto_3
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 6555
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v19

    .line 6556
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v20

    .line 6557
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v21

    .line 6559
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v23

    move-object/from16 v18, v0

    move-object/from16 v22, v14

    invoke-direct/range {v18 .. v23}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v9, v0

    goto :goto_4

    .line 6539
    .end local v17    # "spans":[Ljava/lang/Object;
    .local v3, "spans":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v17, v3

    move/from16 v16, v6

    .line 6561
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v13    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v14    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v17    # "spans":[Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .end local v17    # "spans":[Ljava/lang/Object;
    .restart local v3    # "spans":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v17, v3

    move/from16 v16, v6

    .end local v3    # "spans":[Ljava/lang/Object;
    .restart local v17    # "spans":[Ljava/lang/Object;
    instance-of v0, v9, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_7

    .line 6562
    if-eqz v12, :cond_6

    .line 6563
    const/4 v9, 0x0

    goto :goto_5

    .line 6565
    :cond_6
    move-object v0, v9

    check-cast v0, Landroid/text/style/ForegroundColorSpan;

    .line 6566
    .local v0, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    .line 6567
    .local v3, "foregroundColor":I
    invoke-static/range {p1 .. p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v5

    .line 6568
    .local v5, "isBgDark":Z
    invoke-static {v3, v1, v5}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v3

    .line 6570
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v9, v6

    .line 6571
    .end local v0    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v3    # "foregroundColor":I
    .end local v5    # "isBgDark":Z
    goto :goto_5

    .line 6573
    :cond_7
    move-object v9, v8

    .line 6575
    :goto_5
    if-eqz v9, :cond_8

    .line 6576
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v9, v10, v11, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6528
    .end local v8    # "span":Ljava/lang/Object;
    .end local v9    # "resultSpan":Ljava/lang/Object;
    .end local v10    # "spanStart":I
    .end local v11    # "spanEnd":I
    .end local v12    # "fullLength":Z
    :cond_8
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v6, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 6579
    .end local v17    # "spans":[Ljava/lang/Object;
    .local v3, "spans":[Ljava/lang/Object;
    :cond_9
    return-object v4

    .line 6581
    .end local v2    # "ss":Landroid/text/Spanned;
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v4    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_a
    return-object p0
.end method

.method private blacklist fullyCustomViewRequiresDecoration(Z)Z
    .locals 3
    .param p1, "fromStyle"    # Z

    .line 6035
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/app/Notification;->-$$Nest$sfgetPLATFORM_STYLE_CLASSES()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6036
    return v0

    .line 6038
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private blacklist generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "emphasizedMode"    # Z
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6409
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6410
    .local v0, "tombstone":Z
    :goto_0
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 6411
    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v4

    goto :goto_1

    .line 6412
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v4

    goto :goto_1

    .line 6413
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v4

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6414
    .local v2, "button":Landroid/widget/RemoteViews;
    const v3, 0x10201af

    if-nez v0, :cond_3

    .line 6415
    iget-object v4, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 6417
    :cond_3
    iget-object v4, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 6418
    invoke-static {p1}, Landroid/app/Notification$Action;->-$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6419
    invoke-static {p1}, Landroid/app/Notification$Action;->-$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 6421
    :cond_4
    if-eqz p2, :cond_9

    .line 6423
    iget-object v4, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 6424
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Colors;->getSecondaryAccentColor()I

    move-result v5

    .line 6425
    .local v5, "buttonFillColor":I
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6426
    invoke-static {v4}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    .line 6429
    :cond_5
    invoke-static {v4}, Landroid/app/Notification$Builder;->getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    .line 6430
    .local v6, "fullLengthColor":Ljava/lang/Integer;
    if-eqz v6, :cond_6

    .line 6432
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v7

    .line 6433
    .local v7, "notifBackgroundColor":I
    nop

    .line 6434
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 6433
    invoke-static {v8, v7}, Landroid/app/Notification$Builder;->ensureButtonFillContrast(II)I

    move-result v5

    .line 6437
    .end local v7    # "notifBackgroundColor":I
    :cond_6
    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 6439
    .end local v6    # "fullLengthColor":Ljava/lang/Integer;
    :goto_2
    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6440
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v6, v5, v7}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v6

    .line 6442
    .local v6, "textColor":I
    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6444
    const v7, 0xffffff

    and-int/2addr v7, v6

    const/high16 v8, 0x33000000

    or-int/2addr v7, v8

    .line 6445
    .local v7, "rippleColor":I
    nop

    .line 6446
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 6445
    const-string/jumbo v9, "setRippleColor"

    invoke-virtual {v2, v3, v9, v8}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6447
    nop

    .line 6448
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 6447
    const-string/jumbo v9, "setButtonBackground"

    invoke-virtual {v2, v3, v9, v8}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6449
    iget-boolean v8, p3, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    if-eqz v8, :cond_8

    .line 6450
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6451
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "key_action_priority"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 6452
    .local v8, "priority":Z
    const-string/jumbo v9, "setIsPriority"

    invoke-virtual {v2, v3, v9, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6454
    if-eqz v8, :cond_7

    const v1, 0x1050050

    .line 6455
    .local v1, "minWidthDimen":I
    :cond_7
    const-string/jumbo v9, "setMinimumWidth"

    invoke-virtual {v2, v3, v9, v1}, Landroid/widget/RemoteViews;->setIntDimen(ILjava/lang/String;I)V

    .line 6457
    .end local v1    # "minWidthDimen":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "buttonFillColor":I
    .end local v6    # "textColor":I
    .end local v7    # "rippleColor":I
    .end local v8    # "priority":Z
    :cond_8
    goto :goto_3

    .line 6458
    :cond_9
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 6459
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6458
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6460
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6464
    :goto_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 6465
    .local v1, "actionIndex":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_a

    .line 6466
    const v4, 0x1020448

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 6468
    :cond_a
    return-object v2
.end method

.method private greylist-max-o getActionLayoutResource()I
    .locals 1

    .line 6951
    const v0, 0x10900c1

    return v0
.end method

.method private greylist-max-o getActionTombstoneLayoutResource()I
    .locals 1

    .line 6959
    const v0, 0x10900c4

    return v0
.end method

.method private greylist-max-o getAllExtras()Landroid/os/Bundle;
    .locals 2

    .line 5005
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 5006
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5007
    return-object v0
.end method

.method private blacklist getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6963
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method private greylist getBaseLayoutResource()I
    .locals 1

    .line 6915
    const v0, 0x10900ce

    return v0
.end method

.method private greylist-max-o getBigBaseLayoutResource()I
    .locals 1

    .line 6923
    const v0, 0x10900cf

    return v0
.end method

.method private blacklist getBigMessagingLayoutResource()I
    .locals 1

    .line 6943
    const v0, 0x10900d2

    return v0
.end method

.method private greylist-max-o getBigPictureLayoutResource()I
    .locals 1

    .line 6927
    const v0, 0x10900d3

    return v0
.end method

.method private greylist-max-o getBigTextLayoutResource()I
    .locals 1

    .line 6931
    const v0, 0x10900d4

    return v0
.end method

.method private blacklist getColorUtil()Lcom/android/internal/util/ContrastColorUtil;
    .locals 1

    .line 4019
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    if-nez v0, :cond_0

    .line 4020
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 4022
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    return-object v0
.end method

.method private blacklist getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .locals 5
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5424
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v3

    iget-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification$Colors;->resolvePalette(Landroid/content/Context;IZZ)V

    .line 5425
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    return-object v0
.end method

.method private blacklist getConversationLayoutResource()I
    .locals 1

    .line 6947
    const v0, 0x10900d6

    return v0
.end method

.method private blacklist getDefaultProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 5212
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5213
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 5212
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getEmphasizedActionLayoutResource()I
    .locals 1

    .line 6955
    const v0, 0x10900c2

    return v0
.end method

.method public static blacklist getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 13
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 6484
    const/4 v0, 0x0

    .line 6485
    .local v0, "result":Ljava/lang/Integer;
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_4

    .line 6486
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    .line 6487
    .local v1, "ss":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 6490
    .local v2, "spans":[Ljava/lang/Object;
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 6491
    .local v6, "span":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 6492
    .local v7, "spanStart":I
    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 6493
    .local v8, "spanEnd":I
    sub-int v9, v8, v7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v4

    .line 6494
    .local v9, "fullLength":Z
    :goto_1
    if-nez v9, :cond_1

    .line 6495
    goto :goto_2

    .line 6497
    :cond_1
    instance-of v10, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v10, :cond_3

    .line 6498
    move-object v10, v6

    check-cast v10, Landroid/text/style/TextAppearanceSpan;

    .line 6499
    .local v10, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v10}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 6500
    .local v11, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_2

    .line 6501
    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6503
    .end local v10    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v11    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2
    goto :goto_2

    :cond_3
    instance-of v10, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v10, :cond_2

    .line 6504
    move-object v10, v6

    check-cast v10, Landroid/text/style/ForegroundColorSpan;

    .line 6505
    .local v10, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v10}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6490
    .end local v6    # "span":Ljava/lang/Object;
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v9    # "fullLength":Z
    .end local v10    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6509
    .end local v1    # "ss":Landroid/text/Spanned;
    .end local v2    # "spans":[Ljava/lang/Object;
    :cond_4
    return-object v0
.end method

.method private blacklist getHeadsUpBaseLayoutResource()I
    .locals 1

    .line 6919
    const v0, 0x10900d7

    return v0
.end method

.method private greylist-max-o getInboxLayoutResource()I
    .locals 1

    .line 6935
    const v0, 0x10900d8

    return v0
.end method

.method private greylist-max-o getMessagingLayoutResource()I
    .locals 1

    .line 6939
    const v0, 0x10900da

    return v0
.end method

.method private blacklist getNonContextualActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 5883
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5884
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5885
    .local v0, "standardActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 5886
    .local v2, "action":Landroid/app/Notification$Action;
    invoke-virtual {v2}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5887
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5889
    .end local v2    # "action":Landroid/app/Notification$Action;
    :cond_1
    goto :goto_0

    .line 5890
    :cond_2
    return-object v0
.end method

.method private blacklist getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6695
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getPrimaryAccentColor()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getProfileBadge()Landroid/graphics/Bitmap;
    .locals 5

    .line 5217
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5218
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 5219
    const/4 v1, 0x0

    return-object v1

    .line 5221
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5223
    .local v1, "size":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5224
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5225
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5226
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5227
    return-object v2
.end method

.method private greylist-max-o getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 5193
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 5196
    const/4 v0, 0x0

    return-object v0

    .line 5200
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5201
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    .line 5202
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getUpdatableProfileBadgeId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/app/Notification$Builder;)V

    .line 5201
    const-string v4, "SOLID_COLORED"

    const-string v5, "NOTIFICATION"

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6690
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getContrastColor()I

    move-result v0

    return v0
.end method

.method private blacklist getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6681
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6682
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6681
    :goto_1
    return v0
.end method

.method private blacklist getUpdatableProfileBadgeId()Ljava/lang/String;
    .locals 2

    .line 5207
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5208
    const-string v0, "WORK_PROFILE_ICON"

    goto :goto_0

    :cond_0
    const-string v0, "UNDEFINED"

    .line 5207
    :goto_0
    return-object v0
.end method

.method private blacklist handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ex"    # Landroid/os/Bundle;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5442
    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5443
    .local v0, "max":I
    const-string v2, "android.progress"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 5444
    .local v2, "progress":I
    const-string v3, "android.progressIndeterminate"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 5445
    .local v3, "ind":Z
    iget-boolean v4, p3, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    const v5, 0x102000d

    if-nez v4, :cond_1

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 5446
    :cond_0
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5447
    invoke-virtual {p1, v5, v0, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 5448
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v4, 0x1060255

    .line 5449
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 5448
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 5450
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 5451
    .local v1, "progressTint":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 5452
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 5453
    const/4 v4, 0x1

    return v4

    .line 5455
    .end local v1    # "progressTint":Landroid/content/res/ColorStateList;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5456
    return v1
.end method

.method private greylist-max-o hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 5996
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    goto :goto_2

    .line 6001
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    .line 6002
    .local v0, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v0, :cond_1

    .line 6003
    return v1

    .line 6006
    :cond_1
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 6007
    .local v4, "r":Landroid/app/RemoteInput;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 6008
    .local v5, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    array-length v6, v5

    if-eqz v6, :cond_2

    goto :goto_1

    .line 6006
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6009
    .restart local v4    # "r":Landroid/app/RemoteInput;
    .restart local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 6012
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_4
    return v1

    .line 5998
    .end local v0    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_5
    :goto_2
    return v1
.end method

.method private blacklist isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5799
    iget-boolean v0, p1, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isCallActionColorCustomizable()Z
    .locals 2

    .line 5807
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isColorDark(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 6595
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isLegacy()Z
    .locals 3

    .line 6618
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_1

    .line 6619
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 6621
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 6623
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0
.end method

.method private blacklist isSnoozeSettingEnabled()Z
    .locals 3

    .line 5870
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_snooze"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 5872
    :catch_0
    move-exception v1

    .line 5875
    .local v1, "ex":Ljava/lang/SecurityException;
    return v0
.end method

.method public static greylist-max-o makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p0, "result"    # Landroid/widget/RemoteViews;

    .line 6253
    if-eqz p0, :cond_0

    .line 6254
    const v0, 0x10202d7

    const/4 v1, 0x1

    const-string/jumbo v2, "setExpanded"

    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6256
    :cond_0
    return-void
.end method

.method private blacklist makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6209
    invoke-virtual {p1}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    .line 6212
    const/4 v0, 0x0

    .line 6213
    .local v0, "header":Landroid/widget/RemoteViews;
    iget v1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    if-ne v1, v2, :cond_0

    .line 6214
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const v3, 0x10900ca

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    move-object v0, v1

    goto :goto_1

    .line 6216
    :cond_0
    iget v1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER_EXPANDED:I

    if-ne v1, v2, :cond_1

    .line 6217
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const v3, 0x10900cb

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    move-object v0, v1

    goto :goto_1

    .line 6219
    :cond_1
    iget v1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 6224
    :cond_2
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const v3, 0x10900cc

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    move-object v0, v1

    goto :goto_1

    .line 6221
    :cond_3
    :goto_0
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const v3, 0x10900cd

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    move-object v0, v1

    .line 6229
    :goto_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 6230
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6231
    return-object v0
.end method

.method public static blacklist maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 10
    .param p0, "n"    # Landroid/app/Notification;

    .line 6872
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6876
    .local v0, "templateClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6877
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6878
    return-object p0

    .line 6882
    :cond_0
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v1, v1, Landroid/app/Notification$BuilderRemoteViews;

    const-string v2, "android.rebuild.contentViewActionCount"

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6883
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6884
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v1, v6, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v5

    .line 6885
    .local v1, "stripContentView":Z
    :goto_0
    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v6, v6, Landroid/app/Notification$BuilderRemoteViews;

    const-string v7, "android.rebuild.bigViewActionCount"

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6886
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v8, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6887
    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v8

    if-ne v6, v8, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v5

    .line 6888
    .local v6, "stripBigContentView":Z
    :goto_1
    iget-object v8, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v8, v8, Landroid/app/Notification$BuilderRemoteViews;

    const-string v9, "android.rebuild.hudViewActionCount"

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6889
    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v8, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 6890
    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v8

    if-ne v4, v8, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    .line 6893
    .local v3, "stripHeadsUpContentView":Z
    :goto_2
    if-nez v1, :cond_4

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    .line 6894
    return-object p0

    .line 6897
    :cond_4
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v4

    .line 6898
    .local v4, "clone":Landroid/app/Notification;
    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 6899
    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6900
    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6902
    :cond_5
    if-eqz v6, :cond_6

    .line 6903
    iput-object v5, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6904
    iget-object v2, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6906
    :cond_6
    if-eqz v3, :cond_7

    .line 6907
    iput-object v5, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 6908
    iget-object v2, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6910
    :cond_7
    return-object v4
.end method

.method private blacklist minimallyDecoratedBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6054
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 6055
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6056
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6057
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6058
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    .line 6059
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6061
    .local v2, "standard":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6063
    invoke-static {v2}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 6064
    return-object v2
.end method

.method private blacklist minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6042
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 6043
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6044
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6045
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6046
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    .line 6047
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6048
    .local v2, "standard":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6050
    return-object v2
.end method

.method private blacklist minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6069
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 6070
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6071
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6072
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6073
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    .line 6074
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6076
    .local v2, "standard":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6078
    return-object v2
.end method

.method private blacklist processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6663
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6664
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6666
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6667
    .local v0, "color":I
    const v1, 0x1020006

    const-string/jumbo v2, "setOriginalIconColor"

    invoke-virtual {p2, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6669
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method private greylist-max-o processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 6627
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6628
    .local v0, "isAlreadyLightText":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 6629
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 6631
    :cond_2
    return-object p1
.end method

.method private blacklist processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 5
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6644
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    .line 6646
    .local v0, "colorable":Z
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 6647
    .local v1, "color":I
    nop

    .line 6648
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    .line 6647
    const v3, 0x1020006

    const-string/jumbo v4, "setBackgroundColor"

    invoke-virtual {p2, v3, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6649
    nop

    .line 6650
    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 6649
    :goto_0
    const-string/jumbo v4, "setOriginalIconColor"

    invoke-virtual {p2, v3, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6652
    nop

    .line 6653
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v2

    .line 6652
    const-string/jumbo v4, "updateColorizedIconTint"

    invoke-virtual {p2, v3, v4, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6654
    return-void
.end method

.method private greylist-max-o processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 5373
    return-object p1
.end method

.method public static whitelist recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .line 6726
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    const-string v2, "android.appInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 6729
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 6731
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6736
    .local v1, "builderContext":Landroid/content/Context;
    :goto_0
    goto :goto_1

    .line 6733
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 6734
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Notification"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6735
    move-object v1, p0

    .local v1, "builderContext":Landroid/content/Context;
    goto :goto_0

    .line 6738
    .end local v1    # "builderContext":Landroid/content/Context;
    :cond_0
    move-object v1, p0

    .line 6741
    .restart local v1    # "builderContext":Landroid/content/Context;
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v2
.end method

.method private greylist-max-o resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 5285
    const v0, 0x10202d7

    const-string/jumbo v1, "setExpanded"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5286
    const v0, 0x10201f9

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5287
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5288
    const v0, 0x1020258

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5289
    const v0, 0x1020339

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5290
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5291
    const v0, 0x102033b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5292
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5293
    const v0, 0x102033a

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5294
    const v0, 0x102033c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5295
    const v0, 0x102063c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5296
    const v0, 0x1020638

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5297
    const v0, 0x10204b9

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5298
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5299
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v2}, Landroid/app/Notification;->-$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V

    .line 5300
    return-void
.end method

.method private greylist-max-o resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 5271
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 5272
    const v0, 0x10204f7

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5273
    const v0, 0x1020016

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5274
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5275
    const v0, 0x1020616

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5276
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5277
    return-void
.end method

.method private greylist-max-o resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .line 5831
    const v0, 0x10201c9

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5832
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 5834
    const v0, 0x102044f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5835
    const v0, 0x1020451

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5836
    const v0, 0x1020452

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5837
    const v0, 0x1020450

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5839
    const v0, 0x1020453

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5840
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5841
    const v0, 0x1020454

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5842
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5845
    const v0, 0x1020449

    const/4 v1, 0x3

    const v2, 0x105025f

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 5847
    return-void
.end method

.method private greylist-max-o sanitizeColor()V
    .locals 3

    .line 6672
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 6673
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 6675
    :cond_0
    return-void
.end method

.method private static blacklist setHeaderlessVerticalMargins(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "hasSecondLine"    # Z

    .line 5350
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5352
    const v0, 0x1050262

    invoke-static {p0, v0}, Landroid/app/Notification;->-$$Nest$smgetFontScaledMarginHeight(Landroid/content/Context;I)I

    move-result v0

    .line 5353
    .local v0, "marginDimen":I
    const v2, 0x102044e

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 5355
    return-void

    .line 5357
    .end local v0    # "marginDimen":I
    :cond_0
    if-eqz p3, :cond_1

    .line 5358
    const v0, 0x1050287

    goto :goto_0

    .line 5359
    :cond_1
    const v0, 0x1050286

    :goto_0
    nop

    .line 5360
    .restart local v0    # "marginDimen":I
    const v2, 0x102044c

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 5362
    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 5364
    return-void
.end method

.method private blacklist setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5378
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5379
    return-void
.end method

.method private blacklist setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5403
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5404
    return-void
.end method

.method private blacklist setTextViewColorThird(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5419
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getThirdTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5420
    return-void
.end method

.method private greylist-max-o showsTimeOrChronometer()Z
    .locals 1

    .line 5825
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist styleDisplaysCustomViewInline()Z
    .locals 1

    .line 6849
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o textColorsNeedInversion()Z
    .locals 3

    .line 6967
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-class v2, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6970
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6971
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x17

    if-le v0, v2, :cond_1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 6968
    .end local v0    # "targetSdkVersion":I
    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5430
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    const v1, 0x10205e8

    if-eqz v0, :cond_0

    .line 5431
    nop

    .line 5432
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 5431
    const-string/jumbo v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 5435
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v2, "setBackgroundResource"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5438
    :goto_0
    return-void
.end method

.method private blacklist useExistingRemoteView(Landroid/widget/RemoteViews;)Z
    .locals 3
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6109
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6110
    return v0

    .line 6112
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6114
    return v0

    .line 6116
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/app/Notification;->-$$Nest$sfgetSTANDARD_LAYOUTS()Landroid/util/ArraySet;

    move-result-object v1

    .line 6117
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6121
    const-string v1, "Notification"

    const-string v2, "For apps targeting S, a custom content view that is a modified version of any standard layout is disallowed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    return v0

    .line 6125
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5043
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5044
    return-object p0
.end method

.method public whitelist addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 5064
    if-eqz p1, :cond_0

    .line 5065
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5067
    :cond_0
    return-object p0
.end method

.method public whitelist addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4964
    if-eqz p1, :cond_0

    .line 4965
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4967
    :cond_0
    return-object p0
.end method

.method public whitelist addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "person"    # Landroid/app/Person;

    .line 4902
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4903
    return-object p0
.end method

.method public whitelist addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 4876
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 4877
    return-object p0
.end method

.method public whitelist build()Landroid/app/Notification;
    .locals 6

    .line 6777
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 6779
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    .line 6780
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6781
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification and BubbleMetadata shortcut id\'s don\'t match, notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs bubble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    .line 6784
    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6788
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 6789
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6792
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/Notification;->-$$Nest$fputcreationTime(Landroid/app/Notification;J)V

    .line 6795
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 6797
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 6799
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_3

    .line 6800
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 6801
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 6802
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 6803
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 6805
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 6807
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_7

    .line 6808
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6809
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6810
    .local v0, "newContentView":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6811
    .local v1, "newBigContentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 6812
    .local v2, "newHeadsUpContentView":Landroid/widget/RemoteViews;
    if-nez v0, :cond_4

    .line 6813
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6814
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6815
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 6814
    const-string v5, "android.rebuild.contentViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6817
    :cond_4
    if-nez v1, :cond_5

    .line 6818
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 6819
    if-eqz v1, :cond_5

    .line 6820
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6821
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 6820
    const-string v5, "android.rebuild.bigViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6824
    :cond_5
    if-nez v2, :cond_6

    .line 6825
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6826
    if-eqz v2, :cond_6

    .line 6827
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6828
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 6827
    const-string v5, "android.rebuild.hudViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6834
    :cond_6
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6835
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6836
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 6839
    .end local v0    # "newContentView":Landroid/widget/RemoteViews;
    .end local v1    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v2    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    :cond_7
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 6840
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 6843
    :cond_8
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 6845
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public greylist-max-o buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .line 6859
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 6860
    return-object p1
.end method

.method public greylist-max-o buildUnstyled()Landroid/app/Notification;
    .locals 3

    .line 6704
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6705
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 6706
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6708
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6709
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    const-string v2, "android.people.list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6711
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 6713
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.contains.customView"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6715
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public whitelist createBigContentView()Landroid/widget/RemoteViews;
    .locals 4

    .line 6132
    const/4 v0, 0x0

    .line 6133
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6134
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6135
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->minimallyDecoratedBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6134
    :goto_0
    return-object v1

    .line 6137
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 6138
    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6139
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6140
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6143
    :cond_2
    if-nez v0, :cond_3

    .line 6144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->bigContentViewRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6145
    iget-object v1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 6146
    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 6147
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 6148
    invoke-virtual {v1, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 6149
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6153
    .end local v1    # "p":Landroid/app/Notification$StandardTemplateParams;
    :cond_3
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 6154
    return-object v0
.end method

.method public whitelist createContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 6022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createContentView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "increasedHeight"    # Z

    .line 6092
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6093
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6094
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6093
    :goto_0
    return-object v0

    .line 6095
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_3

    .line 6096
    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6097
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_3

    .line 6098
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6099
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 6098
    :goto_1
    return-object v1

    .line 6102
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 6103
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6104
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6105
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 6297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "increasedHeight"    # Z

    .line 6269
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6271
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 6272
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 6270
    :goto_0
    return-object v0

    .line 6273
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 6274
    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6275
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_3

    .line 6276
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6277
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 6276
    :goto_1
    return-object v1

    .line 6275
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_3
    goto :goto_2

    .line 6279
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 6280
    return-object v1

    .line 6279
    :cond_5
    :goto_2
    nop

    .line 6285
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 6286
    invoke-virtual {v0, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6287
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6288
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6289
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public whitelist extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .line 5148
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 5149
    return-object p0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 5001
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "publicMode"    # Z

    .line 6984
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 6985
    invoke-virtual {v0}, Landroid/app/Notification$Style;->getHeadsUpStatusBarText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 6986
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6987
    return-object v0

    .line 6990
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6759
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5388
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getPrimaryTextColor()I

    move-result v0

    return v0
.end method

.method public blacklist getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5398
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result v0

    return v0
.end method

.method public whitelist getStyle()Landroid/app/Notification$Style;
    .locals 1

    .line 5111
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v0
.end method

.method public blacklist getThirdTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5414
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getThirdTextColor()I

    move-result v0

    return v0
.end method

.method public greylist-max-r loadHeaderAppName()Ljava/lang/String;
    .locals 7

    .line 5738
    const/4 v0, 0x0

    .line 5739
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5740
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.substName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5745
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5746
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5747
    .local v3, "subName":Ljava/lang/String;
    const-string v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 5749
    move-object v0, v3

    goto :goto_0

    .line 5751
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempting to substitute app name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' without holding perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Notification"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5758
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5760
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5762
    const/4 v2, 0x0

    return-object v2

    .line 5765
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o makeAmbientNotification()Landroid/widget/RemoteViews;
    .locals 2

    .line 6240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6241
    .local v0, "headsUpContentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 6242
    return-object v0

    .line 6244
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "useRegularSubtext"    # Z

    .line 6369
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 6370
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6372
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6373
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    if-eqz p1, :cond_0

    iget-object v1, v0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6374
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 6376
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 6377
    .local v1, "header":Landroid/widget/RemoteViews;
    const v2, 0x102044b

    const-string/jumbo v3, "setAcceptAllTouches"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6379
    const-string/jumbo v3, "styleTextAsTitle"

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6380
    return-object v1
.end method

.method public blacklist makeNotificationGroupHeader()Landroid/widget/RemoteViews;
    .locals 2

    .line 6182
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    .line 6183
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6184
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6182
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeNotificationGroupHeaderExpanded()Landroid/widget/RemoteViews;
    .locals 2

    .line 6195
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER_EXPANDED:I

    .line 6196
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6197
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6195
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public whitelist makePublicContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "isLowPriority"    # Z

    .line 6305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$Builder;->makePublicContentView(ZZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist makePublicContentView(ZZ)Landroid/widget/RemoteViews;
    .locals 12
    .param p1, "isLowPriority"    # Z
    .param p2, "ignorePublic"    # Z

    .line 6317
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 6318
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 6319
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 6322
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6323
    .local v0, "savedBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6324
    .local v1, "style":Landroid/app/Notification$Style;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6325
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 6326
    .local v3, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4, v2}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 6327
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 6328
    .local v4, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 6329
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6330
    .local v2, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6331
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 6332
    .local v5, "publicExtras":Landroid/os/Bundle;
    nop

    .line 6333
    const-string v6, "android.showWhen"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 6332
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6334
    nop

    .line 6335
    const-string v6, "android.showChronometer"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 6334
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6336
    nop

    .line 6337
    const-string v6, "android.chronometerCountDown"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 6336
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6338
    const-string v6, "android.substName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6339
    .local v7, "appName":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 6340
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6342
    :cond_1
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6344
    iget-object v6, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v6}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    sget v8, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 6345
    invoke-virtual {v6, v8}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 6346
    invoke-virtual {v6, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 6347
    .local v6, "params":Landroid/app/Notification$StandardTemplateParams;
    if-eqz p1, :cond_2

    .line 6348
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 6350
    :cond_2
    invoke-direct {p0, v6}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 6351
    .local v8, "view":Landroid/widget/RemoteViews;
    const v9, 0x102044b

    const/4 v10, 0x1

    const-string/jumbo v11, "setExpandOnlyOnButton"

    invoke-virtual {v8, v9, v11, v10}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6352
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6353
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v9, v3}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 6354
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v9, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 6355
    iput-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6356
    iput-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6357
    return-object v8
.end method

.method public varargs whitelist setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .line 5079
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5080
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 5081
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 5082
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5080
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5085
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public whitelist setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "allowed"    # Z

    .line 6750
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V

    .line 6751
    return-object p0
.end method

.method public whitelist setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .line 4790
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4791
    return-object p0
.end method

.method public whitelist setBadgeIconType(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .line 4095
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V

    .line 4096
    return-object p0
.end method

.method public whitelist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "data"    # Landroid/app/Notification$BubbleMetadata;

    .line 4128
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V

    .line 4129
    return-object p0
.end method

.method public whitelist setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 4844
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 4845
    return-object p0
.end method

.method public greylist setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4135
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4136
    return-object p0
.end method

.method public whitelist setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .line 4144
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4145
    return-object p0
.end method

.method public whitelist setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "countDown"    # Z

    .line 4223
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4224
    return-object p0
.end method

.method public whitelist setColor(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "argb"    # I

    .line 5179
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 5180
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 5181
    return-object p0
.end method

.method public whitelist setColorized(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "colorize"    # Z

    .line 4738
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4739
    return-object p0
.end method

.method public whitelist setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4463
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4439
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.infoText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4440
    return-object p0
.end method

.method public whitelist setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 4521
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4522
    return-object p0
.end method

.method public whitelist setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4296
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4297
    return-object p0
.end method

.method public whitelist setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 4287
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4288
    return-object p0
.end method

.method public whitelist setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4486
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4487
    return-object p0
.end method

.method public whitelist setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4474
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 4475
    return-object p0
.end method

.method public whitelist setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4498
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 4499
    return-object p0
.end method

.method public whitelist setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "defaults"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4821
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 4822
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 4532
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 4533
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4984
    if-eqz p1, :cond_0

    .line 4985
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 4987
    :cond_0
    return-object p0
.end method

.method public whitelist setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 5162
    if-eqz p2, :cond_0

    .line 5163
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 5165
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5167
    :goto_0
    return-object p0
.end method

.method public whitelist setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "behavior"    # I

    .line 4779
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V

    .line 4780
    return-object p0
.end method

.method public whitelist setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .line 4561
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 4562
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4563
    return-object p0
.end method

.method public whitelist setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 4919
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4920
    return-object p0
.end method

.method public whitelist setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupAlertBehavior"    # I

    .line 4111
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V

    .line 4112
    return-object p0
.end method

.method public whitelist setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .line 4933
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4934
    return-object p0
.end method

.method public greylist-max-o setHideSmartReplies(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "hideSmartReplies"    # Z

    .line 4413
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.hideSmartReplies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4414
    return-object p0
.end method

.method public whitelist setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 4597
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 4609
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 4610
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4611
    return-object p0
.end method

.method public whitelist setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4691
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 4692
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 4693
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 4694
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 4695
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 4697
    :cond_1
    return-object p0
.end method

.method public whitelist setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .line 4802
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4803
    return-object p0
.end method

.method public whitelist setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "locusId"    # Landroid/content/LocusId;

    .line 4081
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V

    .line 4082
    return-object p0
.end method

.method public whitelist setNumber(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "number"    # I

    .line 4423
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 4424
    return-object p0
.end method

.method public whitelist setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .line 4717
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4718
    return-object p0
.end method

.method public whitelist setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .line 4753
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4754
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pri"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4833
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 4834
    return-object p0
.end method

.method public whitelist setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .line 4450
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4451
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4452
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4453
    return-object p0
.end method

.method public whitelist setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .line 5133
    if-eqz p1, :cond_0

    .line 5134
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 5135
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    goto :goto_0

    .line 5137
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 5139
    :goto_0
    return-object p0
.end method

.method public blacklist setRemoteInputHistory([Landroid/app/RemoteInputHistoryItem;)Landroid/app/Notification$Builder;
    .locals 5
    .param p1, "items"    # [Landroid/app/RemoteInputHistoryItem;

    .line 4384
    const-string v0, "android.remoteInputHistoryItems"

    if-nez p1, :cond_0

    .line 4385
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1

    .line 4387
    :cond_0
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4388
    .local v1, "itemCount":I
    new-array v2, v1, [Landroid/app/RemoteInputHistoryItem;

    .line 4389
    .local v2, "history":[Landroid/app/RemoteInputHistoryItem;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 4390
    aget-object v4, p1, v3

    aput-object v4, v2, v3

    .line 4389
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4392
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4394
    .end local v1    # "itemCount":I
    .end local v2    # "history":[Landroid/app/RemoteInputHistoryItem;
    :goto_1
    return-object p0
.end method

.method public whitelist setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 7
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .line 4359
    const-string v0, "android.remoteInputHistory"

    if-nez p1, :cond_0

    .line 4360
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4362
    :cond_0
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4363
    .local v1, "itemCount":I
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 4364
    .local v2, "safe":[Ljava/lang/CharSequence;
    new-array v3, v1, [Landroid/app/RemoteInputHistoryItem;

    .line 4365
    .local v3, "items":[Landroid/app/RemoteInputHistoryItem;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 4366
    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4

    .line 4367
    new-instance v5, Landroid/app/RemoteInputHistoryItem;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/CharSequence;)V

    aput-object v5, v3, v4

    .line 4365
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4369
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4372
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.remoteInputHistoryItems"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4374
    .end local v1    # "itemCount":I
    .end local v2    # "safe":[Ljava/lang/CharSequence;
    .end local v3    # "items":[Landroid/app/RemoteInputHistoryItem;
    :goto_1
    return-object p0
.end method

.method public whitelist setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4339
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 4340
    return-object p0
.end method

.method public whitelist setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 4068
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4069
    return-object p0
.end method

.method public greylist-max-o setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "showSpinner"    # Z

    .line 4403
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4404
    return-object p0
.end method

.method public whitelist setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "show"    # Z

    .line 4188
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4189
    return-object p0
.end method

.method public whitelist setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .line 4243
    if-eqz p1, :cond_0

    .line 4244
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    .line 4245
    :cond_0
    const/4 v0, 0x0

    .line 4243
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .line 4261
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 4262
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 4275
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 4276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4277
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 4279
    :cond_0
    return-object p0
.end method

.method public whitelist setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sortKey"    # Ljava/lang/String;

    .line 4951
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4952
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4624
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4625
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 4626
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4638
    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 4639
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4640
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 4641
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4653
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4654
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 4655
    return-object p0
.end method

.method public whitelist setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "style"    # Landroid/app/Notification$Style;

    .line 5095
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_1

    .line 5096
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5097
    const-string v0, "android.template"

    if-eqz p1, :cond_0

    .line 5098
    invoke-virtual {p1, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 5099
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5101
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5104
    :cond_1
    :goto_0
    return-object p0
.end method

.method public whitelist setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4320
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.subText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4321
    return-object p0
.end method

.method public whitelist setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .line 4573
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4574
    return-object p0
.end method

.method public whitelist setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4583
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4585
    return-object p0
.end method

.method public greylist setTimeout(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4151
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-$$Nest$fputmTimeout(Landroid/app/Notification;J)V

    .line 4152
    return-object p0
.end method

.method public whitelist setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    .line 4161
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-$$Nest$fputmTimeout(Landroid/app/Notification;J)V

    .line 4162
    return-object p0
.end method

.method public whitelist setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "b"    # Z

    .line 4209
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4210
    return-object p0
.end method

.method public whitelist setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pattern"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4673
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 4674
    return-object p0
.end method

.method public whitelist setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "visibility"    # I

    .line 5121
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 5122
    return-object p0
.end method

.method public whitelist setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .line 4176
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 4177
    return-object p0
.end method

.method public greylist-max-o usesStandardHeader()Z
    .locals 5

    .line 5255
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5256
    return v1

    .line 5258
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 5259
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 5260
    return v1

    .line 5263
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/Notification;->-$$Nest$sfgetSTANDARD_LAYOUTS()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5264
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 5265
    .local v0, "contentViewUsesHeader":Z
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/app/Notification;->-$$Nest$sfgetSTANDARD_LAYOUTS()Landroid/util/ArraySet;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5266
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v1

    .line 5267
    .local v3, "bigContentViewUsesHeader":Z
    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method

.method public blacklist usesTemplate()Z
    .locals 1

    .line 6999
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 7001
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6999
    :goto_0
    return v0
.end method
