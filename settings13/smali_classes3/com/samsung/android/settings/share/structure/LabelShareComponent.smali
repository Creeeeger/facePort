.class public Lcom/samsung/android/settings/share/structure/LabelShareComponent;
.super Ljava/lang/Object;
.source "LabelShareComponent.java"


# instance fields
.field private className:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private subLabel:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->locale:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->packageName:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->className:Ljava/lang/String;

    .line 15
    iput p4, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->uid:I

    .line 16
    iput-object p5, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->label:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->subLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->locale:Ljava/lang/String;

    return-object p0
.end method

.method public getMainLabel()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSubLabel()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->subLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->uid:I

    return p0
.end method
