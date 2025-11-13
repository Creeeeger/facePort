.class public final Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatelessBuilder"
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

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCommandId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/command/Command;
    .locals 19

    move-object/from16 v0, p0

    .line 573
    new-instance v18, Lcom/samsung/android/sdk/command/Command;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCommandId:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mSubTitle:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mForTarget:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mClassification:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCategory:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mSubCategory:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    iget-object v11, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCustomConfigComponent:Ljava/lang/String;

    sget-object v12, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    iget v13, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatus:I

    iget-object v14, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatusText:Ljava/lang/String;

    iget-object v15, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatusCode:Ljava/lang/String;

    iget v0, v0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mIconResId:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/samsung/android/sdk/command/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/samsung/android/sdk/command/template/CommandTemplate;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/command/Command$1;)V

    return-object v18
.end method

.method public setCategory(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setIconResId(I)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconResId"
        }
    .end annotation

    .line 568
    iput p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mIconResId:I

    return-object p0
.end method

.method public setStatus(I)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 553
    iput p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mStatus:I

    return-object p0
.end method

.method public setSubTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subTitle"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forTarget"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mForTarget:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command$StatelessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatelessBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
