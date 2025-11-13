.class public Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;
.super Ljava/lang/Object;
.source "RoutinesCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Routine"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mIconResId:I

.field private mKey:Ljava/lang/String;

.field private mTitleResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->mKey:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->mTitleResId:I

    .line 32
    iput-object p2, p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->mCategory:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->mIconResId:I

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->mIconResId:I

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;->mTitleResId:I

    return p0
.end method
