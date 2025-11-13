.class public final Lcom/github/mikephil/charting/components/LegendEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field public formColor:I

.field public formLineDashEffect:Landroid/graphics/DashPathEffect;

.field public formLineWidth:F

.field public formSize:F

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput p3, p0, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    iput p4, p0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    iput p5, p0, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    return-void
.end method
