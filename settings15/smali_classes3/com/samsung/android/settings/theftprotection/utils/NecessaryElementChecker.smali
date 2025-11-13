.class public final Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public mDoFail:Ljava/lang/Runnable;

.field public mDoSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static countCheckItems(Landroid/content/Context;Z)I
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->values()[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->check(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->CHECK_CHILD_ACCOUNT:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public final processNecessaryElements(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processNecessaryElements : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NecessaryElementChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->values()[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->mActivity:Landroid/app/Activity;

    if-ge v3, v1, :cond_7

    aget-object v6, v0, v3

    sget-object v7, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->CHECK_CHILD_ACCOUNT:Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5, v2}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->countCheckItems(Landroid/content/Context;Z)I

    move-result v7

    if-lez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-gt v7, v8, :cond_6

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->check(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const v0, 0x7f142fd6

    if-eq p1, v4, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    const p1, 0x7f141709

    const v0, 0x7f1409b7

    goto :goto_1

    :cond_2
    const v2, 0x7f141706

    const p1, 0x7f141705

    const v0, 0x7f1416f4

    goto :goto_1

    :cond_3
    const v2, 0x7f141704

    const p1, 0x7f141703

    const v0, 0x7f142fd0    # 1.96974E38f

    goto :goto_1

    :cond_4
    const v2, 0x7f141708

    const p1, 0x7f141707

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;->values()[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;

    move-result-object v1

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-lez v2, :cond_5

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    :cond_5
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance p1, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v6, v1}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    invoke-virtual {v3, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v6}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    const/high16 v0, 0x1040000

    invoke-virtual {v3, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v1, v6}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;[Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker$Sequence;)V

    iget-object p0, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    invoke-static {v5, v4}, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->countCheckItems(Landroid/content/Context;Z)I

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->mDoSuccess:Ljava/lang/Runnable;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/utils/NecessaryElementChecker;->mDoFail:Ljava/lang/Runnable;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_9
    :goto_3
    return-void
.end method
