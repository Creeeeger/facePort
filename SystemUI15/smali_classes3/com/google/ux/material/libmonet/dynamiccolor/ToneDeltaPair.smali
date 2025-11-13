.class public final Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final delta:D

.field public final polarity:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

.field public final roleA:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

.field public final roleB:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

.field public final stayTogether:Z


# direct methods
.method public constructor <init>(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;DLcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->roleA:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    iput-object p2, p0, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->roleB:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    iput-wide p3, p0, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->delta:D

    iput-object p5, p0, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->polarity:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    iput-boolean p6, p0, Lcom/google/ux/material/libmonet/dynamiccolor/ToneDeltaPair;->stayTogether:Z

    return-void
.end method
