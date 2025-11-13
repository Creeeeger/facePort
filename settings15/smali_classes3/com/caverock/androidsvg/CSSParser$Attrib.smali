.class public final Lcom/caverock/androidsvg/CSSParser$Attrib;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final name:Ljava/lang/String;

.field public final operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    iput-object p3, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    return-void
.end method
