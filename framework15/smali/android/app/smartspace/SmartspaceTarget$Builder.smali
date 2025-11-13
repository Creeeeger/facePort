.class public final Landroid/app/smartspace/SmartspaceTarget$Builder;
.super Ljava/lang/Object;
.source "SmartspaceTarget.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAssociatedSmartspaceTargetId:Ljava/lang/String;

.field private blacklist mBaseAction:Landroid/app/smartspace/SmartspaceAction;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mCreationTimeMillis:J

.field private blacklist mExpiryTimeMillis:J

.field private blacklist mFeatureType:I

.field private blacklist mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

.field private blacklist mIconGrid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteViews:Landroid/widget/RemoteViews;

.field private blacklist mScore:F

.field private blacklist mSensitive:Z

.field private blacklist mShouldShowExpanded:Z

.field private blacklist mSliceUri:Landroid/net/Uri;

.field private final blacklist mSmartspaceTargetId:Ljava/lang/String;

.field private blacklist mSourceNotificationKey:Ljava/lang/String;

.field private blacklist mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;

.field private blacklist mWidget:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mActionChips:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mIconGrid:Ljava/util/List;

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSmartspaceTargetId:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/SmartspaceTarget;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSmartspaceTargetId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/smartspace/SmartspaceTarget;

    move-object v2, v1

    iget-object v3, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSmartspaceTargetId:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v5, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    iget-wide v6, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mCreationTimeMillis:J

    iget-wide v8, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mExpiryTimeMillis:J

    iget v10, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mScore:F

    iget-object v11, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mActionChips:Ljava/util/List;

    iget-object v12, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mIconGrid:Ljava/util/List;

    iget v13, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mFeatureType:I

    iget-boolean v14, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSensitive:Z

    iget-boolean v15, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mShouldShowExpanded:Z

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSourceNotificationKey:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSliceUri:Landroid/net/Uri;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v23, v1

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v24}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/widget/RemoteViews;Landroid/app/smartspace/SmartspaceTarget-IA;)V

    return-object v25

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please assign a value to all @NonNull args."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setActionChips(Ljava/util/List;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;)",
            "Landroid/app/smartspace/SmartspaceTarget$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mActionChips:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setAssociatedSmartspaceTargetId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setBaseAction(Landroid/app/smartspace/SmartspaceAction;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    return-object p0
.end method

.method public whitelist setCreationTimeMillis(J)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mCreationTimeMillis:J

    return-object p0
.end method

.method public whitelist setExpiryTimeMillis(J)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mExpiryTimeMillis:J

    return-object p0
.end method

.method public whitelist setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mFeatureType:I

    return-object p0
.end method

.method public whitelist setHeaderAction(Landroid/app/smartspace/SmartspaceAction;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    return-object p0
.end method

.method public whitelist setIconGrid(Ljava/util/List;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;)",
            "Landroid/app/smartspace/SmartspaceTarget$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mIconGrid:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setRemoteViews(Landroid/widget/RemoteViews;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Widget providers and RemoteViews cannot be used at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setScore(F)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mScore:F

    return-object p0
.end method

.method public whitelist setSensitive(Z)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSensitive:Z

    return-object p0
.end method

.method public whitelist setShouldShowExpanded(Z)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mShouldShowExpanded:Z

    return-object p0
.end method

.method public whitelist setSliceUri(Landroid/net/Uri;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSliceUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist setSourceNotificationKey(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSourceNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTemplateData(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    return-object p0
.end method

.method public whitelist setWidget(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Widget providers and RemoteViews cannot be used at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
