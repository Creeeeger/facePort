.class public final Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCategory:Ljava/lang/String;

.field public final mClassification:Ljava/lang/String;

.field public final mCommandId:Ljava/lang/String;

.field public final mCustomConfigComponent:Ljava/lang/String;

.field public final mForTarget:Ljava/lang/String;

.field public final mIconResId:I

.field public mLaunchIntent:Landroid/app/PendingIntent;

.field public final mPackageName:Ljava/lang/String;

.field public mStatus:I

.field public mStatusCode:Ljava/lang/String;

.field public final mStatusText:Ljava/lang/String;

.field public final mSubCategory:Ljava/lang/String;

.field public final mSubTitle:Ljava/lang/String;

.field public mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/command/Command;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCommandId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mSubTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mForTarget:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mForTarget:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mClassification:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mClassification:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCategory:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mSubCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubCategory:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mCustomConfigComponent:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCustomConfigComponent:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    iget v0, p1, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mStatusText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusText:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/sdk/command/Command;->mIconResId:I

    iput p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mIconResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCommandId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/command/Command;
    .locals 19

    move-object/from16 v0, p0

    new-instance v18, Lcom/samsung/android/sdk/command/Command;

    move-object/from16 v1, v18

    iget-object v10, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    iget-object v12, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    iget v13, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iget-object v15, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mIconResId:I

    move/from16 v16, v2

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCommandId:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubTitle:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mForTarget:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mClassification:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCategory:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubCategory:Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCustomConfigComponent:Ljava/lang/String;

    iget-object v14, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusText:Ljava/lang/String;

    invoke-direct/range {v1 .. v17}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/command/Command$1;)V

    return-object v18
.end method
