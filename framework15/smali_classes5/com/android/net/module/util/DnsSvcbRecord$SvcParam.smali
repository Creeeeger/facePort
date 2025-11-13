.class abstract Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
.super Ljava/lang/Object;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SvcParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mKey:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->mKey:I

    return-void
.end method


# virtual methods
.method blacklist getKey()I
    .locals 1

    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->mKey:I

    return v0
.end method

.method abstract blacklist getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
