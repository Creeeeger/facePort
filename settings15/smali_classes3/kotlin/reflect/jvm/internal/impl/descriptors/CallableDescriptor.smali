.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/Substitutable;


# virtual methods
.method public abstract getContextReceiverParameters()Ljava/util/List;
.end method

.method public abstract getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
.end method

.method public abstract getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
.end method

.method public abstract getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method

.method public abstract getTypeParameters()Ljava/util/List;
.end method

.method public abstract getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;)Ljava/lang/Object;
.end method

.method public abstract getValueParameters()Ljava/util/List;
.end method

.method public abstract hasSynthesizedParameterNames()Z
.end method
