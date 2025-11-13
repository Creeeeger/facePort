.class public final Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText$SurroundingText;
.super Ljava/lang/Object;
.source "InputConnectionCallProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SurroundingText"
.end annotation


# static fields
.field public static final blacklist OFFSET:J = 0x10500000004L

.field public static final blacklist SELECTION_END:J = 0x10500000003L

.field public static final blacklist SELECTION_START:J = 0x10500000002L


# instance fields
.field final synthetic blacklist this$1:Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText;


# direct methods
.method public constructor blacklist <init>(Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText$SurroundingText;->this$1:Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
