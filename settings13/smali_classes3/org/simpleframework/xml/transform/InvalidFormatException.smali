.class public Lorg/simpleframework/xml/transform/InvalidFormatException;
.super Lorg/simpleframework/xml/transform/TransformException;
.source "InvalidFormatException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/transform/TransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
