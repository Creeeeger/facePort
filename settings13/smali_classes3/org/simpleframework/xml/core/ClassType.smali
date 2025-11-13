.class Lorg/simpleframework/xml/core/ClassType;
.super Ljava/lang/Object;
.source "ClassType.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Type;


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassType;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassType;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassType;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
