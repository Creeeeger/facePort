.class public Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatefulBuilder"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mClassification:Ljava/lang/String;

.field private mCommandId:Ljava/lang/String;

.field private mCustomConfigComponent:Ljava/lang/String;

.field private mForTarget:Ljava/lang/String;

.field private mIconResId:I

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private mPackageName:Ljava/lang/String;

.field private mStatus:I

.field private mStatusCode:Ljava/lang/String;

.field private mStatusText:Ljava/lang/String;

.field private mSubCategory:Ljava/lang/String;

.field private mSubTitle:Ljava/lang/String;

.field private mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/command/Command;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getCommandId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCommandId:Ljava/lang/String;

    .line 631
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTitle:Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubTitle:Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mPackageName:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mForTarget:Ljava/lang/String;

    .line 635
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getClassification()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mClassification:Ljava/lang/String;

    .line 636
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCategory:Ljava/lang/String;

    .line 637
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getSubCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubCategory:Ljava/lang/String;

    .line 638
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 639
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getCustomConfigComponent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCustomConfigComponent:Ljava/lang/String;

    .line 640
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getCommandTemplate()Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 641
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 642
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getStatusText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusText:Ljava/lang/String;

    .line 643
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    .line 644
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getIconResId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mIconResId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/command/Command;
    .locals 19

    move-object/from16 v0, p0

    .line 723
    new-instance v18, Lcom/samsung/android/sdk/command/Command;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCommandId:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubTitle:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mForTarget:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mClassification:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCategory:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mSubCategory:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    iget-object v11, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCustomConfigComponent:Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    iget v13, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iget-object v14, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusText:Ljava/lang/String;

    iget-object v15, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    iget v0, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mIconResId:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/command/Command$1;)V

    return-object v18
.end method

.method public setCategory(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setCommandTemplate(Lcom/samsung/android/sdk/command/template/CommandTemplate;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template"
        }
    .end annotation

    .line 698
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0
.end method

.method public setIconResId(I)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconResId"
        }
    .end annotation

    .line 718
    iput p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mIconResId:I

    return-object p0
.end method

.method public setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "launchIntent"
        }
    .end annotation

    .line 688
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setStatus(I)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 703
    iput p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    return-object p0
.end method

.method public setStatusCode(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusCode"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusCode:Ljava/lang/String;

    return-object p0
.end method

.method public setStatusText(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusText"
        }
    .end annotation

    .line 708
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatusText:Ljava/lang/String;

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatefulBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forTarget"
        }
    .end annotation

    .line 668
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mForTarget:Ljava/lang/String;

    return-object p0
.end method
