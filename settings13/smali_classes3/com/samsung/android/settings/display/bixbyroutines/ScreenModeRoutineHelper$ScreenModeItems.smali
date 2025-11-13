.class public Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;
.super Ljava/lang/Object;
.source "ScreenModeRoutineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenModeItems"
.end annotation


# instance fields
.field private mDBValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNameStringId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mNameStringId:Ljava/util/List;

    .line 236
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mDBValue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItem(II)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mDBValue:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNameStringArrary()[Ljava/lang/String;
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-static {v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPositionByValue(I)I
    .locals 2

    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mDBValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mDBValue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getValueByPosition(I)I
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->mDBValue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
