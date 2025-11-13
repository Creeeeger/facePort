.class public final synthetic Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;

    iput p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;

    iget p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    iget v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->mListItemValue:I

    sget-object v2, Lcom/samsung/android/settings/display/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object v2, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenMode(I)V

    const-string/jumbo v3, "screen_mode_setting"

    const-string/jumbo v4, "screen_mode_automatic_setting"

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v1, v6, :cond_0

    sget-object v7, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v7, v2, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v5, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v5, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v5, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v6, v2, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v6, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v6, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    int-to-long v2, p0

    const/16 p0, 0x1079

    const/16 v0, 0x107a

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onItemClick setScreenMode : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ModePreview"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
