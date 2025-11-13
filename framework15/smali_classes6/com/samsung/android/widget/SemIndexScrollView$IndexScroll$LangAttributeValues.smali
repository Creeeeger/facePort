.class Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LangAttributeValues"
.end annotation


# instance fields
.field blacklist alphabetArray:[Ljava/lang/String;

.field blacklist dotCount:I

.field blacklist height:F

.field blacklist indexCount:I

.field blacklist separatorHeight:F

.field final synthetic blacklist this$1:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

.field blacklist totalCount:I


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;IIIFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->this$1:Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput p3, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iput p4, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iput p5, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput p6, p0, Lcom/samsung/android/widget/SemIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    return-void
.end method
