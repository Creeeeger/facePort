.class public Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAttribute:I

.field public mColour:I

.field public final synthetic this$0:Lcom/samsung/android/knox/custom/StatusbarIconItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->this$0:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->this$0:Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p3, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method


# virtual methods
.method public getAttribute()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    return p0
.end method

.method public getColour()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return p0
.end method

.method public setAttributeColour(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method
