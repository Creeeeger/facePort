.class public Landroid/app/Notification$DecoratedCustomViewStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 10107
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 10108
    return-void
.end method

.method private greylist-max-o makeDecoratedBigContentView()Landroid/widget/RemoteViews;
    .locals 5

    .line 10180
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 10181
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 10182
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :goto_0
    nop

    .line 10183
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 10184
    return-object v1

    .line 10186
    :cond_1
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    move-object v1, v2

    .line 10187
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, v2, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v2}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 10188
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    const/4 v3, 0x2

    .line 10189
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10190
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 10191
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10192
    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$mgetBigBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v4

    .line 10191
    invoke-static {v3, v4, v2, v1}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 10193
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0, v2, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 10195
    return-object v3
.end method

.method private greylist-max-o makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 5

    .line 10142
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 10143
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 10144
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :goto_0
    nop

    .line 10145
    .local v0, "headsUpContentView":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 10146
    return-object v1

    .line 10148
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 10149
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 10151
    :cond_2
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    move-object v1, v2

    .line 10152
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, v2, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v2}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 10153
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    const/4 v3, 0x2

    .line 10154
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10155
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 10156
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10157
    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v4

    .line 10156
    invoke-static {v3, v4, v2, v1}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 10158
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0, v2, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 10160
    return-object v3
.end method

.method private greylist-max-o makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 10164
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 10165
    return-object v0

    .line 10167
    :cond_0
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v1, v0}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    move-object v0, v1

    .line 10168
    .local v0, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v1, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 10169
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x2

    .line 10170
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10171
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 10172
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10173
    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v3

    .line 10172
    invoke-static {v2, v3, v1, v0}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 10174
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p1, v1, v0}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 10176
    return-object v2
.end method


# virtual methods
.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 2
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 10203
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 10207
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 10204
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o displayCustomViewInline()Z
    .locals 1

    .line 10114
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 10130
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 10122
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 10138
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method
