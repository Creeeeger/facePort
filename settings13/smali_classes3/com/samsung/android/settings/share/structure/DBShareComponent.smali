.class public Lcom/samsung/android/settings/share/structure/DBShareComponent;
.super Lcom/samsung/android/settings/share/structure/ShareComponent;
.source "DBShareComponent.java"


# instance fields
.field private final mIdx:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/share/structure/ShareComponent;-><init>(Landroid/content/ComponentName;I)V

    .line 14
    iput p1, p0, Lcom/samsung/android/settings/share/structure/DBShareComponent;->mIdx:I

    return-void
.end method


# virtual methods
.method public getIdx()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/settings/share/structure/DBShareComponent;->mIdx:I

    return p0
.end method

.method public setLabelPair(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    return-void
.end method
