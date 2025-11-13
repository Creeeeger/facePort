.class public Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;
.super Ljava/lang/Object;
.source "SingleChoiceTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private mIconResId:I

.field private mPrimaryTitle:Ljava/lang/String;

.field private mSecondaryTitle:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primaryTitle",
            "secondaryTitle",
            "iconResId",
            "value"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mPrimaryTitle:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mSecondaryTitle:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mIconResId:I

    .line 134
    iput-object p4, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mIconResId:I

    return p0
.end method

.method public getPrimaryTitle()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mPrimaryTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryTitle()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mSecondaryTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mValue:Ljava/lang/String;

    return-object p0
.end method
