.class public final Lcom/android/systemui/DualToneHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public darkColor:Lcom/android/systemui/DualToneHandler$Color;

.field public lightColor:Lcom/android/systemui/DualToneHandler$Color;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final setColorsFromContext(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0401bd

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0403e1

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    new-instance p1, Lcom/android/systemui/DualToneHandler$Color;

    const v2, 0x7f040621

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v4

    const v5, 0x7f040322

    invoke-static {v0, v5, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v6

    const v7, 0x7f04026d

    invoke-static {v0, v7, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p1, v4, v6, v0}, Lcom/android/systemui/DualToneHandler$Color;-><init>(III)V

    iput-object p1, p0, Lcom/android/systemui/DualToneHandler;->darkColor:Lcom/android/systemui/DualToneHandler$Color;

    new-instance p1, Lcom/android/systemui/DualToneHandler$Color;

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v1, v5, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v1, v7, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    invoke-direct {p1, v0, v2, v1}, Lcom/android/systemui/DualToneHandler$Color;-><init>(III)V

    iput-object p1, p0, Lcom/android/systemui/DualToneHandler;->lightColor:Lcom/android/systemui/DualToneHandler$Color;

    return-void
.end method
