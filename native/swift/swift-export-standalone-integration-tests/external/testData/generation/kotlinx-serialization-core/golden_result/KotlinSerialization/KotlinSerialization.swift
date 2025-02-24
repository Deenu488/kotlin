@_exported import ExportedKotlinPackages
import KotlinRuntimeSupport
import KotlinRuntime
import stdlib
@_implementationOnly import KotlinBridges_KotlinSerialization

public typealias `internal` = ExportedKotlinPackages.kotlinx.serialization.internal
public typealias modules = ExportedKotlinPackages.kotlinx.serialization.modules
public typealias descriptors = ExportedKotlinPackages.kotlinx.serialization.descriptors
public typealias builtins = ExportedKotlinPackages.kotlinx.serialization.builtins
public typealias BinaryFormat = ExportedKotlinPackages.kotlinx.serialization.BinaryFormat
public typealias ContextualSerializer = ExportedKotlinPackages.kotlinx.serialization.ContextualSerializer
public typealias DeserializationStrategy = ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy
public typealias KSerializer = ExportedKotlinPackages.kotlinx.serialization.KSerializer
public typealias MissingFieldException = ExportedKotlinPackages.kotlinx.serialization.MissingFieldException
public typealias PolymorphicSerializer = ExportedKotlinPackages.kotlinx.serialization.PolymorphicSerializer
public typealias SealedClassSerializer = ExportedKotlinPackages.kotlinx.serialization.SealedClassSerializer
public typealias SerialFormat = ExportedKotlinPackages.kotlinx.serialization.SerialFormat
public typealias SerializationException = ExportedKotlinPackages.kotlinx.serialization.SerializationException
public typealias SerializationStrategy = ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy
public typealias StringFormat = ExportedKotlinPackages.kotlinx.serialization.StringFormat
public typealias encoding = ExportedKotlinPackages.kotlinx.serialization.encoding
public func serializer(
    kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
    typeArgumentsSerializers: [any ExportedKotlinPackages.kotlinx.serialization.KSerializer],
    isNullable: Swift.Bool
) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
    ExportedKotlinPackages.kotlinx.serialization.serializer(kClass: kClass, typeArgumentsSerializers: typeArgumentsSerializers, isNullable: isNullable)
}
public func serializer(
    type: any ExportedKotlinPackages.kotlin.reflect.KType
) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
    ExportedKotlinPackages.kotlinx.serialization.serializer(type: type)
}
public func serializer(
    _ receiver: any ExportedKotlinPackages.kotlin.reflect.KClass
) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
    ExportedKotlinPackages.kotlinx.serialization.serializer(receiver)
}
public func serializer(
    _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
    kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
    typeArgumentsSerializers: [any ExportedKotlinPackages.kotlinx.serialization.KSerializer],
    isNullable: Swift.Bool
) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
    ExportedKotlinPackages.kotlinx.serialization.serializer(receiver, kClass: kClass, typeArgumentsSerializers: typeArgumentsSerializers, isNullable: isNullable)
}
public func serializer(
    _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
    type: any ExportedKotlinPackages.kotlin.reflect.KType
) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
    ExportedKotlinPackages.kotlinx.serialization.serializer(receiver, type: type)
}
public func serializerOrNull(
    type: any ExportedKotlinPackages.kotlin.reflect.KType
) -> (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)? {
    ExportedKotlinPackages.kotlinx.serialization.serializerOrNull(type: type)
}
public func serializerOrNull(
    _ receiver: any ExportedKotlinPackages.kotlin.reflect.KClass
) -> (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)? {
    ExportedKotlinPackages.kotlinx.serialization.serializerOrNull(receiver)
}
public func serializerOrNull(
    _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
    type: any ExportedKotlinPackages.kotlin.reflect.KType
) -> (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)? {
    ExportedKotlinPackages.kotlinx.serialization.serializerOrNull(receiver, type: type)
}
public func decodeFromHexString(
    _ receiver: any ExportedKotlinPackages.kotlinx.serialization.BinaryFormat,
    deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
    hex: Swift.String
) -> Swift.Never {
    ExportedKotlinPackages.kotlinx.serialization.decodeFromHexString(receiver, deserializer: deserializer, hex: hex)
}
public func encodeToHexString(
    _ receiver: any ExportedKotlinPackages.kotlinx.serialization.BinaryFormat,
    serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
    value: Swift.Never
) -> Swift.String {
    ExportedKotlinPackages.kotlinx.serialization.encodeToHexString(receiver, serializer: serializer, value: value)
}
public func findPolymorphicSerializer(
    _ receiver: ExportedKotlinPackages.kotlinx.serialization.internal.AbstractPolymorphicSerializer,
    decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
    klassName: Swift.String?
) -> any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy {
    ExportedKotlinPackages.kotlinx.serialization.findPolymorphicSerializer(receiver, decoder: decoder, klassName: klassName)
}
public func findPolymorphicSerializer(
    _ receiver: ExportedKotlinPackages.kotlinx.serialization.internal.AbstractPolymorphicSerializer,
    encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
    value: Swift.Never
) -> any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy {
    ExportedKotlinPackages.kotlinx.serialization.findPolymorphicSerializer(receiver, encoder: encoder, value: value)
}
public extension ExportedKotlinPackages.kotlinx.serialization {
    public protocol BinaryFormat: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.SerialFormat {
        func decodeFromByteArray(
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            bytes: ExportedKotlinPackages.kotlin.ByteArray
        ) -> Swift.Never
        func encodeToByteArray(
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> ExportedKotlinPackages.kotlin.ByteArray
    }
    public protocol DeserializationStrategy: KotlinRuntime.KotlinBase {
        var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get
        }
        func deserialize(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        ) -> Swift.Never
    }
    public protocol KSerializer: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy, ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy {
        var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get
        }
    }
    public protocol SerialFormat: KotlinRuntime.KotlinBase {
        var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
            get
        }
    }
    public protocol SerializationStrategy: KotlinRuntime.KotlinBase {
        var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get
        }
        func serialize(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Never
        ) -> Swift.Void
    }
    public protocol StringFormat: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.SerialFormat {
        func decodeFromString(
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            string: Swift.String
        ) -> Swift.Never
        func encodeToString(
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.String
    }
    public final class ContextualSerializer: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.KSerializer, KotlinRuntimeSupport._KotlinBridged {
        public var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_ContextualSerializer_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
            }
        }
        public func deserialize(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        ) -> Swift.Never {
            fatalError()
        }
        public func serialize(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        public init(
            serializableClass: any ExportedKotlinPackages.kotlin.reflect.KClass
        ) {
            let __kt = kotlinx_serialization_ContextualSerializer_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_ContextualSerializer_init_initialize__TypesOfArguments__Swift_UInt_anyU20ExportedKotlinPackages_kotlin_reflect_KClass__(__kt, serializableClass.__externalRCRef())
        }
        public init(
            serializableClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            fallbackSerializer: (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)?,
            typeArgumentsSerializers: ExportedKotlinPackages.kotlin.Array
        ) {
            let __kt = kotlinx_serialization_ContextualSerializer_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_ContextualSerializer_init_initialize__TypesOfArguments__Swift_UInt_anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_opt__ExportedKotlinPackages_kotlin_Array__(__kt, serializableClass.__externalRCRef(), fallbackSerializer.map { it in it.__externalRCRef() } ?? 0, typeArgumentsSerializers.__externalRCRef())
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public final class MissingFieldException: ExportedKotlinPackages.kotlinx.serialization.SerializationException {
        public var missingFields: [Swift.String] {
            get {
                return kotlinx_serialization_MissingFieldException_missingFields_get(self.__externalRCRef()) as! Swift.Array<Swift.String>
            }
        }
        public init(
            missingFields: [Swift.String],
            serialName: Swift.String
        ) {
            let __kt = kotlinx_serialization_MissingFieldException_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_MissingFieldException_init_initialize__TypesOfArguments__Swift_UInt_Swift_Array_Swift_String__Swift_String__(__kt, missingFields, serialName)
        }
        public init(
            missingField: Swift.String,
            serialName: Swift.String
        ) {
            let __kt = kotlinx_serialization_MissingFieldException_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_MissingFieldException_init_initialize__TypesOfArguments__Swift_UInt_Swift_String_Swift_String__(__kt, missingField, serialName)
        }
        public init(
            missingFields: [Swift.String],
            message: Swift.String?,
            cause: ExportedKotlinPackages.kotlin.Throwable?
        ) {
            let __kt = kotlinx_serialization_MissingFieldException_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_MissingFieldException_init_initialize__TypesOfArguments__Swift_UInt_Swift_Array_Swift_String__Swift_String_opt__ExportedKotlinPackages_kotlin_Throwable_opt___(__kt, missingFields, message ?? nil, cause.map { it in it.__externalRCRef() } ?? 0)
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public final class PolymorphicSerializer: ExportedKotlinPackages.kotlinx.serialization.internal.AbstractPolymorphicSerializer {
        public override var baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_PolymorphicSerializer_baseClass_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlin.reflect.KClass
            }
        }
        public var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_PolymorphicSerializer_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
            }
        }
        public func toString() -> Swift.String {
            return kotlinx_serialization_PolymorphicSerializer_toString(self.__externalRCRef())
        }
        public init(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass
        ) {
            let __kt = kotlinx_serialization_PolymorphicSerializer_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_PolymorphicSerializer_init_initialize__TypesOfArguments__Swift_UInt_anyU20ExportedKotlinPackages_kotlin_reflect_KClass__(__kt, baseClass.__externalRCRef())
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public final class SealedClassSerializer: ExportedKotlinPackages.kotlinx.serialization.internal.AbstractPolymorphicSerializer {
        public override var baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_SealedClassSerializer_baseClass_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlin.reflect.KClass
            }
        }
        public var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_SealedClassSerializer_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
            }
        }
        public func findPolymorphicSerializerOrNull(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
            klassName: Swift.String?
        ) -> (any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy)? {
            return switch kotlinx_serialization_SealedClassSerializer_findPolymorphicSerializerOrNull__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_encoding_CompositeDecoder_Swift_String_opt___(self.__externalRCRef(), decoder.__externalRCRef(), klassName ?? nil) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy; }
        }
        public func findPolymorphicSerializerOrNull(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Never
        ) -> (any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy)? {
            fatalError()
        }
        public init(
            serialName: Swift.String,
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            subclasses: ExportedKotlinPackages.kotlin.Array,
            subclassSerializers: ExportedKotlinPackages.kotlin.Array
        ) {
            let __kt = kotlinx_serialization_SealedClassSerializer_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_SealedClassSerializer_init_initialize__TypesOfArguments__Swift_UInt_Swift_String_anyU20ExportedKotlinPackages_kotlin_reflect_KClass_ExportedKotlinPackages_kotlin_Array_ExportedKotlinPackages_kotlin_Array__(__kt, serialName, baseClass.__externalRCRef(), subclasses.__externalRCRef(), subclassSerializers.__externalRCRef())
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class SerializationException: ExportedKotlinPackages.kotlin.IllegalArgumentException {
        public override init() {
            let __kt = kotlinx_serialization_SerializationException_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_SerializationException_init_initialize__TypesOfArguments__Swift_UInt__(__kt)
        }
        public override init(
            message: Swift.String?
        ) {
            let __kt = kotlinx_serialization_SerializationException_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_SerializationException_init_initialize__TypesOfArguments__Swift_UInt_Swift_String_opt___(__kt, message ?? nil)
        }
        public override init(
            message: Swift.String?,
            cause: ExportedKotlinPackages.kotlin.Throwable?
        ) {
            let __kt = kotlinx_serialization_SerializationException_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_SerializationException_init_initialize__TypesOfArguments__Swift_UInt_Swift_String_opt__ExportedKotlinPackages_kotlin_Throwable_opt___(__kt, message ?? nil, cause.map { it in it.__externalRCRef() } ?? 0)
        }
        public override init(
            cause: ExportedKotlinPackages.kotlin.Throwable?
        ) {
            let __kt = kotlinx_serialization_SerializationException_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_SerializationException_init_initialize__TypesOfArguments__Swift_UInt_ExportedKotlinPackages_kotlin_Throwable_opt___(__kt, cause.map { it in it.__externalRCRef() } ?? 0)
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public static func serializer(
        kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        typeArgumentsSerializers: [any ExportedKotlinPackages.kotlinx.serialization.KSerializer],
        isNullable: Swift.Bool
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_serializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_Swift_Array_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__Swift_Bool__(kClass.__externalRCRef(), typeArgumentsSerializers, isNullable)) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        type: any ExportedKotlinPackages.kotlin.reflect.KType
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_serializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KType__(type.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: any ExportedKotlinPackages.kotlin.reflect.KClass
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_serializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
        kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        typeArgumentsSerializers: [any ExportedKotlinPackages.kotlinx.serialization.KSerializer],
        isNullable: Swift.Bool
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_serializer__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule_anyU20ExportedKotlinPackages_kotlin_reflect_KClass_Swift_Array_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__Swift_Bool__(receiver.__externalRCRef(), kClass.__externalRCRef(), typeArgumentsSerializers, isNullable)) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
        type: any ExportedKotlinPackages.kotlin.reflect.KType
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_serializer__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule_anyU20ExportedKotlinPackages_kotlin_reflect_KType__(receiver.__externalRCRef(), type.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializerOrNull(
        type: any ExportedKotlinPackages.kotlin.reflect.KType
    ) -> (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)? {
        return switch kotlinx_serialization_serializerOrNull__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KType__(type.__externalRCRef()) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer; }
    }
    public static func serializerOrNull(
        _ receiver: any ExportedKotlinPackages.kotlin.reflect.KClass
    ) -> (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)? {
        return switch kotlinx_serialization_serializerOrNull__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass__(receiver.__externalRCRef()) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer; }
    }
    public static func serializerOrNull(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
        type: any ExportedKotlinPackages.kotlin.reflect.KType
    ) -> (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)? {
        return switch kotlinx_serialization_serializerOrNull__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule_anyU20ExportedKotlinPackages_kotlin_reflect_KType__(receiver.__externalRCRef(), type.__externalRCRef()) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer; }
    }
    public static func decodeFromHexString(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.BinaryFormat,
        deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
        hex: Swift.String
    ) -> Swift.Never {
        fatalError()
    }
    public static func encodeToHexString(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.BinaryFormat,
        serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
        value: Swift.Never
    ) -> Swift.String {
        fatalError()
    }
    public static func findPolymorphicSerializer(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.internal.AbstractPolymorphicSerializer,
        decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
        klassName: Swift.String?
    ) -> any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_findPolymorphicSerializer__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_internal_AbstractPolymorphicSerializer_anyU20ExportedKotlinPackages_kotlinx_serialization_encoding_CompositeDecoder_Swift_String_opt___(receiver.__externalRCRef(), decoder.__externalRCRef(), klassName ?? nil)) as! any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy
    }
    public static func findPolymorphicSerializer(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.internal.AbstractPolymorphicSerializer,
        encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
        value: Swift.Never
    ) -> any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy {
        fatalError()
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.internal {
    public protocol GeneratedSerializer: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        func childSerializers() -> ExportedKotlinPackages.kotlin.Array
        func typeParametersSerializers() -> ExportedKotlinPackages.kotlin.Array
    }
    open class AbstractCollectionSerializer: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.KSerializer, KotlinRuntimeSupport._KotlinBridged {
        open func builder() -> Swift.Never {
            fatalError()
        }
        open func deserialize(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        ) -> Swift.Never {
            fatalError()
        }
        public final func merge(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder,
            previous: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        open func readAll(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
            builder: Swift.Never,
            startIndex: Swift.Int32,
            size: Swift.Int32
        ) -> Swift.Void {
            fatalError()
        }
        open func readElement(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
            index: Swift.Int32,
            builder: Swift.Never,
            checkIndex: Swift.Bool
        ) -> Swift.Void {
            fatalError()
        }
        open func serialize(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func builderSize(
            _ receiver: Swift.Never
        ) -> Swift.Int32 {
            fatalError()
        }
        open func checkCapacity(
            _ receiver: Swift.Never,
            size: Swift.Int32
        ) -> Swift.Void {
            fatalError()
        }
        open func collectionIterator(
            _ receiver: Swift.Never
        ) -> any ExportedKotlinPackages.kotlin.collections.Iterator {
            fatalError()
        }
        open func collectionSize(
            _ receiver: Swift.Never
        ) -> Swift.Int32 {
            fatalError()
        }
        open func toBuilder(
            _ receiver: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        open func toResult(
            _ receiver: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class AbstractPolymorphicSerializer: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.KSerializer, KotlinRuntimeSupport._KotlinBridged {
        open var baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_AbstractPolymorphicSerializer_baseClass_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlin.reflect.KClass
            }
        }
        public final func deserialize(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        ) -> Swift.Never {
            fatalError()
        }
        open func findPolymorphicSerializerOrNull(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
            klassName: Swift.String?
        ) -> (any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy)? {
            return switch kotlinx_serialization_internal_AbstractPolymorphicSerializer_findPolymorphicSerializerOrNull__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_encoding_CompositeDecoder_Swift_String_opt___(self.__externalRCRef(), decoder.__externalRCRef(), klassName ?? nil) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy; }
        }
        open func findPolymorphicSerializerOrNull(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Never
        ) -> (any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy)? {
            fatalError()
        }
        public final func serialize(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public final class ElementMarker: KotlinRuntime.KotlinBase, KotlinRuntimeSupport._KotlinBridged {
        public func mark(
            index: Swift.Int32
        ) -> Swift.Void {
            return kotlinx_serialization_internal_ElementMarker_mark__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), index)
        }
        public func nextUnmarkedIndex() -> Swift.Int32 {
            return kotlinx_serialization_internal_ElementMarker_nextUnmarkedIndex(self.__externalRCRef())
        }
        public init(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            readIfAbsent: @escaping @convention(block) (any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor, Swift.Int32) -> Swift.Bool
        ) {
            let __kt = kotlinx_serialization_internal_ElementMarker_init_allocate()
            super.init(__externalRCRef: __kt)
            kotlinx_serialization_internal_ElementMarker_init_initialize__TypesOfArguments__Swift_UInt_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_U28anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_U20Swift_Int32U29202D_U20Swift_Bool__(__kt, descriptor.__externalRCRef(), {
                let originalBlock = readIfAbsent
                return { arg0, arg1 in return originalBlock(KotlinRuntime.KotlinBase(__externalRCRef: arg0) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor, arg1) }
            }())
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class MapLikeSerializer: ExportedKotlinPackages.kotlinx.serialization.internal.AbstractCollectionSerializer {
        open var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_MapLikeSerializer_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
            }
        }
        public final var keySerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_MapLikeSerializer_keySerializer_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
            }
        }
        public final var valueSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_MapLikeSerializer_valueSerializer_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
            }
        }
        public final func readAll(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
            builder: Swift.Never,
            startIndex: Swift.Int32,
            size: Swift.Int32
        ) -> Swift.Void {
            fatalError()
        }
        public final func readElement(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder,
            index: Swift.Int32,
            builder: Swift.Never,
            checkIndex: Swift.Bool
        ) -> Swift.Void {
            fatalError()
        }
        open func serialize(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func insertKeyValuePair(
            _ receiver: Swift.Never,
            index: Swift.Int32,
            key: Swift.Never,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        package init(
            keySerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer,
            valueSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class NamedValueDecoder: ExportedKotlinPackages.kotlinx.serialization.internal.TaggedDecoder {
        open func composeName(
            parentName: Swift.String,
            childName: Swift.String
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueDecoder_composeName__TypesOfArguments__Swift_String_Swift_String__(self.__externalRCRef(), parentName, childName)
        }
        open func elementName(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueDecoder_elementName__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func nested(
            nestedName: Swift.String
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueDecoder_nested__TypesOfArguments__Swift_String__(self.__externalRCRef(), nestedName)
        }
        public final func getTag(
            _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueDecoder_getTag__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), receiver.__externalRCRef(), index)
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class NamedValueEncoder: ExportedKotlinPackages.kotlinx.serialization.internal.TaggedEncoder {
        open func composeName(
            parentName: Swift.String,
            childName: Swift.String
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueEncoder_composeName__TypesOfArguments__Swift_String_Swift_String__(self.__externalRCRef(), parentName, childName)
        }
        open func elementName(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueEncoder_elementName__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func nested(
            nestedName: Swift.String
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueEncoder_nested__TypesOfArguments__Swift_String__(self.__externalRCRef(), nestedName)
        }
        public final func getTag(
            _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.String {
            return kotlinx_serialization_internal_NamedValueEncoder_getTag__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), receiver.__externalRCRef(), index)
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class TaggedDecoder: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder, ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder, KotlinRuntimeSupport._KotlinBridged {
        public final var currentTag: Swift.Never {
            get {
                fatalError()
            }
        }
        public final var currentTagOrNull: Swift.Never {
            get {
                fatalError()
            }
        }
        open var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
            get {
                return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_internal_TaggedDecoder_serializersModule_get(self.__externalRCRef()))
            }
        }
        open func beginStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_TaggedDecoder_beginStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder
        }
        public final func copyTagsTo(
            other: ExportedKotlinPackages.kotlinx.serialization.internal.TaggedDecoder
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedDecoder_copyTagsTo__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_internal_TaggedDecoder__(self.__externalRCRef(), other.__externalRCRef())
        }
        public final func decodeBoolean() -> Swift.Bool {
            return kotlinx_serialization_internal_TaggedDecoder_decodeBoolean(self.__externalRCRef())
        }
        public final func decodeBooleanElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Bool {
            return kotlinx_serialization_internal_TaggedDecoder_decodeBooleanElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func decodeByte() -> Swift.Int8 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeByte(self.__externalRCRef())
        }
        public final func decodeByteElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int8 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeByteElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func decodeChar() -> Swift.Unicode.UTF16.CodeUnit {
            return kotlinx_serialization_internal_TaggedDecoder_decodeChar(self.__externalRCRef())
        }
        public final func decodeCharElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Unicode.UTF16.CodeUnit {
            return kotlinx_serialization_internal_TaggedDecoder_decodeCharElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func decodeDouble() -> Swift.Double {
            return kotlinx_serialization_internal_TaggedDecoder_decodeDouble(self.__externalRCRef())
        }
        public final func decodeDoubleElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Double {
            return kotlinx_serialization_internal_TaggedDecoder_decodeDoubleElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func decodeEnum(
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Int32 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeEnum__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), enumDescriptor.__externalRCRef())
        }
        public final func decodeFloat() -> Swift.Float {
            return kotlinx_serialization_internal_TaggedDecoder_decodeFloat(self.__externalRCRef())
        }
        public final func decodeFloatElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Float {
            return kotlinx_serialization_internal_TaggedDecoder_decodeFloatElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeInline(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_TaggedDecoder_decodeInline__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        }
        public final func decodeInlineElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_TaggedDecoder_decodeInlineElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        }
        public final func decodeInt() -> Swift.Int32 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeInt(self.__externalRCRef())
        }
        public final func decodeIntElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int32 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeIntElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func decodeLong() -> Swift.Int64 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeLong(self.__externalRCRef())
        }
        public final func decodeLongElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int64 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeLongElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeNotNullMark() -> Swift.Bool {
            return kotlinx_serialization_internal_TaggedDecoder_decodeNotNullMark(self.__externalRCRef())
        }
        public final func decodeNull() -> Swift.Never? {
            return { kotlinx_serialization_internal_TaggedDecoder_decodeNull(self.__externalRCRef()); return nil; }()
        }
        public final func decodeNullableSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        public final func decodeSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        open func decodeSerializableValue(
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        public final func decodeShort() -> Swift.Int16 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeShort(self.__externalRCRef())
        }
        public final func decodeShortElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int16 {
            return kotlinx_serialization_internal_TaggedDecoder_decodeShortElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        public final func decodeString() -> Swift.String {
            return kotlinx_serialization_internal_TaggedDecoder_decodeString(self.__externalRCRef())
        }
        public final func decodeStringElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.String {
            return kotlinx_serialization_internal_TaggedDecoder_decodeStringElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeTaggedBoolean(
            tag: Swift.Never
        ) -> Swift.Bool {
            fatalError()
        }
        open func decodeTaggedByte(
            tag: Swift.Never
        ) -> Swift.Int8 {
            fatalError()
        }
        open func decodeTaggedChar(
            tag: Swift.Never
        ) -> Swift.Unicode.UTF16.CodeUnit {
            fatalError()
        }
        open func decodeTaggedDouble(
            tag: Swift.Never
        ) -> Swift.Double {
            fatalError()
        }
        open func decodeTaggedEnum(
            tag: Swift.Never,
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Int32 {
            fatalError()
        }
        open func decodeTaggedFloat(
            tag: Swift.Never
        ) -> Swift.Float {
            fatalError()
        }
        open func decodeTaggedInline(
            tag: Swift.Never,
            inlineDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder {
            fatalError()
        }
        open func decodeTaggedInt(
            tag: Swift.Never
        ) -> Swift.Int32 {
            fatalError()
        }
        open func decodeTaggedLong(
            tag: Swift.Never
        ) -> Swift.Int64 {
            fatalError()
        }
        open func decodeTaggedNotNullMark(
            tag: Swift.Never
        ) -> Swift.Bool {
            fatalError()
        }
        open func decodeTaggedNull(
            tag: Swift.Never
        ) -> Swift.Never? {
            fatalError()
        }
        open func decodeTaggedShort(
            tag: Swift.Never
        ) -> Swift.Int16 {
            fatalError()
        }
        open func decodeTaggedString(
            tag: Swift.Never
        ) -> Swift.String {
            fatalError()
        }
        open func decodeTaggedValue(
            tag: Swift.Never
        ) -> KotlinRuntime.KotlinBase {
            fatalError()
        }
        open func endStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedDecoder_endStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
        }
        public final func popTag() -> Swift.Never {
            fatalError()
        }
        public final func pushTag(
            name: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func getTag(
            _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Never {
            fatalError()
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class TaggedEncoder: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder, ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder, KotlinRuntimeSupport._KotlinBridged {
        public final var currentTag: Swift.Never {
            get {
                fatalError()
            }
        }
        public final var currentTagOrNull: Swift.Never {
            get {
                fatalError()
            }
        }
        open var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
            get {
                return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_internal_TaggedEncoder_serializersModule_get(self.__externalRCRef()))
            }
        }
        open func beginStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_TaggedEncoder_beginStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder
        }
        public final func encodeBoolean(
            value: Swift.Bool
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeBoolean__TypesOfArguments__Swift_Bool__(self.__externalRCRef(), value)
        }
        public final func encodeBooleanElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Bool
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeBooleanElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Bool__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        public final func encodeByte(
            value: Swift.Int8
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeByte__TypesOfArguments__Swift_Int8__(self.__externalRCRef(), value)
        }
        public final func encodeByteElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int8
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeByteElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int8__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        public final func encodeChar(
            value: Swift.Unicode.UTF16.CodeUnit
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeChar__TypesOfArguments__Swift_Unicode_UTF16_CodeUnit__(self.__externalRCRef(), value)
        }
        public final func encodeCharElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Unicode.UTF16.CodeUnit
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeCharElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Unicode_UTF16_CodeUnit__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        public final func encodeDouble(
            value: Swift.Double
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeDouble__TypesOfArguments__Swift_Double__(self.__externalRCRef(), value)
        }
        public final func encodeDoubleElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Double
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeDoubleElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Double__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        public final func encodeEnum(
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeEnum__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), enumDescriptor.__externalRCRef(), index)
        }
        public final func encodeFloat(
            value: Swift.Float
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeFloat__TypesOfArguments__Swift_Float__(self.__externalRCRef(), value)
        }
        public final func encodeFloatElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Float
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeFloatElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Float__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeInline(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_TaggedEncoder_encodeInline__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
        }
        public final func encodeInlineElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_TaggedEncoder_encodeInlineElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
        }
        public final func encodeInt(
            value: Swift.Int32
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeInt__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), value)
        }
        public final func encodeIntElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int32
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeIntElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        public final func encodeLong(
            value: Swift.Int64
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeLong__TypesOfArguments__Swift_Int64__(self.__externalRCRef(), value)
        }
        public final func encodeLongElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int64
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeLongElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int64__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeNotNullMark() -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeNotNullMark(self.__externalRCRef())
        }
        open func encodeNull() -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeNull(self.__externalRCRef())
        }
        open func encodeNullableSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        public final func encodeShort(
            value: Swift.Int16
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeShort__TypesOfArguments__Swift_Int16__(self.__externalRCRef(), value)
        }
        public final func encodeShortElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int16
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeShortElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int16__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        public final func encodeString(
            value: Swift.String
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeString__TypesOfArguments__Swift_String__(self.__externalRCRef(), value)
        }
        public final func encodeStringElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.String
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_encodeStringElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_String__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeTaggedBoolean(
            tag: Swift.Never,
            value: Swift.Bool
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedByte(
            tag: Swift.Never,
            value: Swift.Int8
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedChar(
            tag: Swift.Never,
            value: Swift.Unicode.UTF16.CodeUnit
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedDouble(
            tag: Swift.Never,
            value: Swift.Double
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedEnum(
            tag: Swift.Never,
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            ordinal: Swift.Int32
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedFloat(
            tag: Swift.Never,
            value: Swift.Float
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedInline(
            tag: Swift.Never,
            inlineDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder {
            fatalError()
        }
        open func encodeTaggedInt(
            tag: Swift.Never,
            value: Swift.Int32
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedLong(
            tag: Swift.Never,
            value: Swift.Int64
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedNonNullMark(
            tag: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedNull(
            tag: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedShort(
            tag: Swift.Never,
            value: Swift.Int16
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedString(
            tag: Swift.Never,
            value: Swift.String
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeTaggedValue(
            tag: Swift.Never,
            value: KotlinRuntime.KotlinBase
        ) -> Swift.Void {
            fatalError()
        }
        open func endEncode(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_endEncode__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
        }
        public final func endStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Void {
            return kotlinx_serialization_internal_TaggedEncoder_endStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
        }
        public final func popTag() -> Swift.Never {
            fatalError()
        }
        public final func pushTag(
            name: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func getTag(
            _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Never {
            fatalError()
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public static func InlinePrimitiveDescriptor(
        name: Swift.String,
        primitiveSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_internal_InlinePrimitiveDescriptor__TypesOfArguments__Swift_String_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(name, primitiveSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func throwArrayMissingFieldException(
        seenArray: ExportedKotlinPackages.kotlin.IntArray,
        goldenMaskArray: ExportedKotlinPackages.kotlin.IntArray,
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Void {
        return kotlinx_serialization_internal_throwArrayMissingFieldException__TypesOfArguments__ExportedKotlinPackages_kotlin_IntArray_ExportedKotlinPackages_kotlin_IntArray_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(seenArray.__externalRCRef(), goldenMaskArray.__externalRCRef(), descriptor.__externalRCRef())
    }
    public static func throwMissingFieldException(
        seen: Swift.Int32,
        goldenMask: Swift.Int32,
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Void {
        return kotlinx_serialization_internal_throwMissingFieldException__TypesOfArguments__Swift_Int32_Swift_Int32_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(seen, goldenMask, descriptor.__externalRCRef())
    }
    public static func jsonCachedSerialNames(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Set<Swift.String> {
        return kotlinx_serialization_internal_jsonCachedSerialNames__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(receiver.__externalRCRef()) as! Swift.Set<Swift.String>
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.modules {
    public protocol SerializersModuleCollector: KotlinRuntime.KotlinBase {
        func contextual(
            kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            provider: @escaping @convention(block) (Swift.Array<any ExportedKotlinPackages.kotlinx.serialization.KSerializer>) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) -> Swift.Void
        func contextual(
            kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) -> Swift.Void
        func polymorphic(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            actualClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            actualSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) -> Swift.Void
        @available(*, deprecated, message: "Deprecated in favor of function with more precise name: polymorphicDefaultDeserializer. Replacement: polymorphicDefaultDeserializer(baseClass, defaultDeserializerProvider)")
        func polymorphicDefault(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            defaultDeserializerProvider: @escaping @convention(block) (Swift.Optional<Swift.String>) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy>
        ) -> Swift.Void
        func polymorphicDefaultDeserializer(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            defaultDeserializerProvider: @escaping @convention(block) (Swift.Optional<Swift.String>) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy>
        ) -> Swift.Void
        func polymorphicDefaultSerializer(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            defaultSerializerProvider: @escaping @convention(block) (Swift.Never) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy>
        ) -> Swift.Void
    }
    public final class PolymorphicModuleBuilder: KotlinRuntime.KotlinBase, KotlinRuntimeSupport._KotlinBridged {
        @available(*, deprecated, message: "Deprecated in favor of function with more precise name: defaultDeserializer. Replacement: defaultDeserializer(defaultSerializerProvider)")
        public func `default`(
            defaultSerializerProvider: @escaping @convention(block) (Swift.Optional<Swift.String>) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy>
        ) -> Swift.Void {
            return kotlinx_serialization_modules_PolymorphicModuleBuilder_default__TypesOfArguments__U28Swift_Optional_Swift_String_U29202D_U20Swift_Optional_anyU20ExportedKotlinPackages_kotlinx_serialization_DeserializationStrategy___(self.__externalRCRef(), {
                let originalBlock = defaultSerializerProvider
                return { arg0 in return originalBlock(arg0).map { it in it.__externalRCRef() } ?? 0 }
            }())
        }
        public func defaultDeserializer(
            defaultDeserializerProvider: @escaping @convention(block) (Swift.Optional<Swift.String>) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy>
        ) -> Swift.Void {
            return kotlinx_serialization_modules_PolymorphicModuleBuilder_defaultDeserializer__TypesOfArguments__U28Swift_Optional_Swift_String_U29202D_U20Swift_Optional_anyU20ExportedKotlinPackages_kotlinx_serialization_DeserializationStrategy___(self.__externalRCRef(), {
                let originalBlock = defaultDeserializerProvider
                return { arg0 in return originalBlock(arg0).map { it in it.__externalRCRef() } ?? 0 }
            }())
        }
        public func subclass(
            subclass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) -> Swift.Void {
            return kotlinx_serialization_modules_PolymorphicModuleBuilder_subclass__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(self.__externalRCRef(), subclass.__externalRCRef(), serializer.__externalRCRef())
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class SerializersModule: KotlinRuntime.KotlinBase, KotlinRuntimeSupport._KotlinBridged {
        open func dumpTo(
            collector: any ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModuleCollector
        ) -> Swift.Void {
            return kotlinx_serialization_modules_SerializersModule_dumpTo__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModuleCollector__(self.__externalRCRef(), collector.__externalRCRef())
        }
        open func getContextual(
            kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            typeArgumentsSerializers: [any ExportedKotlinPackages.kotlinx.serialization.KSerializer]
        ) -> (any ExportedKotlinPackages.kotlinx.serialization.KSerializer)? {
            return switch kotlinx_serialization_modules_SerializersModule_getContextual__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_Swift_Array_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer___(self.__externalRCRef(), kClass.__externalRCRef(), typeArgumentsSerializers) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer; }
        }
        open func getPolymorphic(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            value: Swift.Never
        ) -> (any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy)? {
            fatalError()
        }
        open func getPolymorphic(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            serializedClassName: Swift.String?
        ) -> (any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy)? {
            return switch kotlinx_serialization_modules_SerializersModule_getPolymorphic__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_Swift_String_opt___(self.__externalRCRef(), baseClass.__externalRCRef(), serializedClassName ?? nil) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy; }
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public final class SerializersModuleBuilder: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModuleCollector, KotlinRuntimeSupport._KotlinBridged {
        public func contextual(
            kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            provider: @escaping @convention(block) (Swift.Array<any ExportedKotlinPackages.kotlinx.serialization.KSerializer>) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) -> Swift.Void {
            return kotlinx_serialization_modules_SerializersModuleBuilder_contextual__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_U28Swift_Array_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_U29202D_U20anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(self.__externalRCRef(), kClass.__externalRCRef(), {
                let originalBlock = provider
                return { arg0 in return originalBlock(arg0 as! Swift.Array<any ExportedKotlinPackages.kotlinx.serialization.KSerializer>).__externalRCRef() }
            }())
        }
        public func contextual(
            kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) -> Swift.Void {
            return kotlinx_serialization_modules_SerializersModuleBuilder_contextual__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(self.__externalRCRef(), kClass.__externalRCRef(), serializer.__externalRCRef())
        }
        public func include(
            module: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule
        ) -> Swift.Void {
            return kotlinx_serialization_modules_SerializersModuleBuilder_include__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule__(self.__externalRCRef(), module.__externalRCRef())
        }
        public func polymorphic(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            actualClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            actualSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
        ) -> Swift.Void {
            return kotlinx_serialization_modules_SerializersModuleBuilder_polymorphic__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(self.__externalRCRef(), baseClass.__externalRCRef(), actualClass.__externalRCRef(), actualSerializer.__externalRCRef())
        }
        public func polymorphicDefaultDeserializer(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            defaultDeserializerProvider: @escaping @convention(block) (Swift.Optional<Swift.String>) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy>
        ) -> Swift.Void {
            return kotlinx_serialization_modules_SerializersModuleBuilder_polymorphicDefaultDeserializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_U28Swift_Optional_Swift_String_U29202D_U20Swift_Optional_anyU20ExportedKotlinPackages_kotlinx_serialization_DeserializationStrategy___(self.__externalRCRef(), baseClass.__externalRCRef(), {
                let originalBlock = defaultDeserializerProvider
                return { arg0 in return originalBlock(arg0).map { it in it.__externalRCRef() } ?? 0 }
            }())
        }
        public func polymorphicDefaultSerializer(
            baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
            defaultSerializerProvider: @escaping @convention(block) (Swift.Never) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy>
        ) -> Swift.Void {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    @available(*, deprecated, message: "Deprecated in the favour of 'EmptySerializersModule()'. Replacement: EmptySerializersModule()")
    public static var EmptySerializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        get {
            return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_modules_EmptySerializersModule_get())
        }
    }
    public static func EmptySerializersModule() -> ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_modules_EmptySerializersModule())
    }
    public static func serializersModuleOf(
        kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        serializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_modules_serializersModuleOf__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(kClass.__externalRCRef(), serializer.__externalRCRef()))
    }
    public static func overwriteWith(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
        other: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule
    ) -> ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_modules_overwriteWith__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule_ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule__(receiver.__externalRCRef(), other.__externalRCRef()))
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.descriptors {
    public protocol SerialDescriptor: KotlinRuntime.KotlinBase {
        var annotations: [any ExportedKotlinPackages.kotlin.Annotation] {
            get
        }
        var elementsCount: Swift.Int32 {
            get
        }
        var isInline: Swift.Bool {
            get
        }
        var isNullable: Swift.Bool {
            get
        }
        var kind: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind {
            get
        }
        var serialName: Swift.String {
            get
        }
        func getElementAnnotations(
            index: Swift.Int32
        ) -> [any ExportedKotlinPackages.kotlin.Annotation]
        func getElementDescriptor(
            index: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        func getElementIndex(
            name: Swift.String
        ) -> Swift.Int32
        func getElementName(
            index: Swift.Int32
        ) -> Swift.String
        func isElementOptional(
            index: Swift.Int32
        ) -> Swift.Bool
    }
    public final class ClassSerialDescriptorBuilder: KotlinRuntime.KotlinBase, KotlinRuntimeSupport._KotlinBridged {
        public var annotations: [any ExportedKotlinPackages.kotlin.Annotation] {
            get {
                return kotlinx_serialization_descriptors_ClassSerialDescriptorBuilder_annotations_get(self.__externalRCRef()) as! Swift.Array<any ExportedKotlinPackages.kotlin.Annotation>
            }
            set {
                return kotlinx_serialization_descriptors_ClassSerialDescriptorBuilder_annotations_set__TypesOfArguments__Swift_Array_anyU20ExportedKotlinPackages_kotlin_Annotation___(self.__externalRCRef(), newValue)
            }
        }
        @available(*, unavailable, message: "isNullable inside buildSerialDescriptor is deprecated. Please use SerialDescriptor.nullable extension on a builder result.")
        public var isNullable: Swift.Bool {
            get {
                return kotlinx_serialization_descriptors_ClassSerialDescriptorBuilder_isNullable_get(self.__externalRCRef())
            }
            set {
                return kotlinx_serialization_descriptors_ClassSerialDescriptorBuilder_isNullable_set__TypesOfArguments__Swift_Bool__(self.__externalRCRef(), newValue)
            }
        }
        public var serialName: Swift.String {
            get {
                return kotlinx_serialization_descriptors_ClassSerialDescriptorBuilder_serialName_get(self.__externalRCRef())
            }
        }
        public func element(
            elementName: Swift.String,
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            annotations: [any ExportedKotlinPackages.kotlin.Annotation],
            isOptional: Swift.Bool
        ) -> Swift.Void {
            return kotlinx_serialization_descriptors_ClassSerialDescriptorBuilder_element__TypesOfArguments__Swift_String_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Array_anyU20ExportedKotlinPackages_kotlin_Annotation__Swift_Bool__(self.__externalRCRef(), elementName, descriptor.__externalRCRef(), annotations, isOptional)
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class PolymorphicKind: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind {
        public final class OPEN: ExportedKotlinPackages.kotlinx.serialization.descriptors.PolymorphicKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PolymorphicKind.OPEN {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PolymorphicKind.OPEN(__externalRCRef: kotlinx_serialization_descriptors_PolymorphicKind_OPEN_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class SEALED: ExportedKotlinPackages.kotlinx.serialization.descriptors.PolymorphicKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PolymorphicKind.SEALED {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PolymorphicKind.SEALED(__externalRCRef: kotlinx_serialization_descriptors_PolymorphicKind_SEALED_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class PrimitiveKind: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind {
        public final class BOOLEAN: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.BOOLEAN {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.BOOLEAN(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_BOOLEAN_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class BYTE: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.BYTE {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.BYTE(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_BYTE_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class CHAR: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.CHAR {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.CHAR(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_CHAR_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class DOUBLE: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.DOUBLE {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.DOUBLE(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_DOUBLE_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class FLOAT: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.FLOAT {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.FLOAT(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_FLOAT_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class INT: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.INT {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.INT(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_INT_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class LONG: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.LONG {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.LONG(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_LONG_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class SHORT: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.SHORT {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.SHORT(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_SHORT_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class STRING: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.STRING {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind.STRING(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveKind_STRING_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class SerialKind: KotlinRuntime.KotlinBase, KotlinRuntimeSupport._KotlinBridged {
        public final class CONTEXTUAL: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind.CONTEXTUAL {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind.CONTEXTUAL(__externalRCRef: kotlinx_serialization_descriptors_SerialKind_CONTEXTUAL_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class ENUM: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind.ENUM {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind.ENUM(__externalRCRef: kotlinx_serialization_descriptors_SerialKind_ENUM_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        open func hashCode() -> Swift.Int32 {
            return kotlinx_serialization_descriptors_SerialKind_hashCode(self.__externalRCRef())
        }
        open func toString() -> Swift.String {
            return kotlinx_serialization_descriptors_SerialKind_toString(self.__externalRCRef())
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class StructureKind: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind {
        public final class CLASS: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.CLASS {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.CLASS(__externalRCRef: kotlinx_serialization_descriptors_StructureKind_CLASS_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class LIST: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.LIST {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.LIST(__externalRCRef: kotlinx_serialization_descriptors_StructureKind_LIST_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class MAP: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.MAP {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.MAP(__externalRCRef: kotlinx_serialization_descriptors_StructureKind_MAP_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        public final class OBJECT: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind {
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.OBJECT {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.descriptors.StructureKind.OBJECT(__externalRCRef: kotlinx_serialization_descriptors_StructureKind_OBJECT_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    public static func getCapturedKClass(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> (any ExportedKotlinPackages.kotlin.reflect.KClass)? {
        return switch kotlinx_serialization_descriptors_capturedKClass_get__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(receiver.__externalRCRef()) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlin.reflect.KClass; }
    }
    public static func getElementDescriptors(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlin.collections.Iterable {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_elementDescriptors_get__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlin.collections.Iterable
    }
    public static func getElementNames(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlin.collections.Iterable {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_elementNames_get__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlin.collections.Iterable
    }
    public static func getNullable(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_nullable_get__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func PrimitiveSerialDescriptor(
        serialName: Swift.String,
        kind: ExportedKotlinPackages.kotlinx.serialization.descriptors.PrimitiveKind
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_PrimitiveSerialDescriptor__TypesOfArguments__Swift_String_ExportedKotlinPackages_kotlinx_serialization_descriptors_PrimitiveKind__(serialName, kind.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func serialDescriptor(
        serialName: Swift.String,
        original: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_SerialDescriptor__TypesOfArguments__Swift_String_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(serialName, original.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func buildClassSerialDescriptor(
        serialName: Swift.String,
        typeParameters: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        builderAction: @escaping @convention(block) () -> Swift.Void
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_buildClassSerialDescriptor__TypesOfArguments__Swift_String_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_U2829202D_U20Swift_Void__(serialName, typeParameters.__externalRCRef(), {
            let originalBlock = builderAction
            return { return originalBlock() }
        }())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func buildSerialDescriptor(
        serialName: Swift.String,
        kind: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind,
        typeParameters: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        builder: @escaping @convention(block) () -> Swift.Void
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_buildSerialDescriptor__TypesOfArguments__Swift_String_ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialKind_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_U2829202D_U20Swift_Void__(serialName, kind.__externalRCRef(), typeParameters.__externalRCRef(), {
            let originalBlock = builder
            return { return originalBlock() }
        }())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func listSerialDescriptor(
        elementDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_listSerialDescriptor__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(elementDescriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func mapSerialDescriptor(
        keyDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        valueDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_mapSerialDescriptor__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(keyDescriptor.__externalRCRef(), valueDescriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func serialDescriptor(
        type: any ExportedKotlinPackages.kotlin.reflect.KType
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_serialDescriptor__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KType__(type.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func setSerialDescriptor(
        elementDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_setSerialDescriptor__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(elementDescriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public static func getContextualDescriptor(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> (any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor)? {
        return switch kotlinx_serialization_descriptors_getContextualDescriptor__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(receiver.__externalRCRef(), descriptor.__externalRCRef()) { case 0: .none; case let res: KotlinRuntime.KotlinBase(__externalRCRef: res) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor; }
    }
    public static func getPolymorphicDescriptors(
        _ receiver: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule,
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> [any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor] {
        return kotlinx_serialization_descriptors_getPolymorphicDescriptors__TypesOfArguments__ExportedKotlinPackages_kotlinx_serialization_modules_SerializersModule_anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(receiver.__externalRCRef(), descriptor.__externalRCRef()) as! Swift.Array<any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor>
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.builtins {
    public final class LongAsStringSerializer: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.KSerializer, KotlinRuntimeSupport._KotlinBridged {
        public var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
            get {
                return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_LongAsStringSerializer_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
            }
        }
        public static var shared: ExportedKotlinPackages.kotlinx.serialization.builtins.LongAsStringSerializer {
            get {
                return ExportedKotlinPackages.kotlinx.serialization.builtins.LongAsStringSerializer(__externalRCRef: kotlinx_serialization_builtins_LongAsStringSerializer_get())
            }
        }
        public func deserialize(
            decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        ) -> Swift.Int64 {
            return kotlinx_serialization_builtins_LongAsStringSerializer_deserialize__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_encoding_Decoder__(self.__externalRCRef(), decoder.__externalRCRef())
        }
        public func serialize(
            encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
            value: Swift.Int64
        ) -> Swift.Void {
            return kotlinx_serialization_builtins_LongAsStringSerializer_serialize__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_encoding_Encoder_Swift_Int64__(self.__externalRCRef(), encoder.__externalRCRef(), value)
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
        private override init() {
            fatalError()
        }
    }
    public static func getNullable(
        _ receiver: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_nullable_get__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func ArraySerializer(
        kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        elementSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_ArraySerializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(kClass.__externalRCRef(), elementSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func BooleanArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_BooleanArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func ByteArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_ByteArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func CharArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_CharArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func DoubleArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_DoubleArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func FloatArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_FloatArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func IntArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_IntArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func ListSerializer(
        elementSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_ListSerializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(elementSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func LongArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_LongArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func MapEntrySerializer(
        keySerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer,
        valueSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_MapEntrySerializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(keySerializer.__externalRCRef(), valueSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func MapSerializer(
        keySerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer,
        valueSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_MapSerializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(keySerializer.__externalRCRef(), valueSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func NothingSerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_NothingSerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func PairSerializer(
        keySerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer,
        valueSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_PairSerializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(keySerializer.__externalRCRef(), valueSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func SetSerializer(
        elementSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_SetSerializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(elementSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func ShortArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_ShortArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func TripleSerializer(
        aSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer,
        bSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer,
        cSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_TripleSerializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(aSerializer.__externalRCRef(), bSerializer.__externalRCRef(), cSerializer.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func UByteArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_UByteArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func UIntArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_UIntArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func ULongArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_ULongArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func UShortArraySerializer() -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_UShortArraySerializer()) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Boolean.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Boolean_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Byte.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Byte_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Char.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Char_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Double.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Double_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Float.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Float_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Int.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Int_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Long.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Long_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.Short.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_Short_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.String.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_String_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.UByte.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_UByte_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.UInt.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_UInt_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.ULong.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_ULong_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.UShort.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_UShort_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: Swift.Void
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__Swift_Void__(receiver)) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
    public static func serializer(
        _ receiver: ExportedKotlinPackages.kotlin.time.Duration.Companion
    ) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_builtins_serializer__TypesOfArguments__ExportedKotlinPackages_kotlin_time_Duration_Companion__(receiver.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.BinaryFormat where Self : KotlinRuntimeSupport._KotlinBridged {
    public func decodeFromByteArray(
        deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
        bytes: ExportedKotlinPackages.kotlin.ByteArray
    ) -> Swift.Never {
        fatalError()
    }
    public func encodeToByteArray(
        serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
        value: Swift.Never
    ) -> ExportedKotlinPackages.kotlin.ByteArray {
        fatalError()
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy where Self : KotlinRuntimeSupport._KotlinBridged {
    public var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        get {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_DeserializationStrategy_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        }
    }
    public func deserialize(
        decoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
    ) -> Swift.Never {
        fatalError()
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.KSerializer where Self : KotlinRuntimeSupport._KotlinBridged {
    public var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        get {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_KSerializer_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        }
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.SerialFormat where Self : KotlinRuntimeSupport._KotlinBridged {
    public var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        get {
            return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_SerialFormat_serializersModule_get(self.__externalRCRef()))
        }
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy where Self : KotlinRuntimeSupport._KotlinBridged {
    public var descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        get {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_SerializationStrategy_descriptor_get(self.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        }
    }
    public func serialize(
        encoder: any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder,
        value: Swift.Never
    ) -> Swift.Void {
        fatalError()
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.StringFormat where Self : KotlinRuntimeSupport._KotlinBridged {
    public func decodeFromString(
        deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
        string: Swift.String
    ) -> Swift.Never {
        fatalError()
    }
    public func encodeToString(
        serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
        value: Swift.Never
    ) -> Swift.String {
        fatalError()
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.internal.GeneratedSerializer where Self : KotlinRuntimeSupport._KotlinBridged {
    public func childSerializers() -> ExportedKotlinPackages.kotlin.Array {
        return ExportedKotlinPackages.kotlin.Array(__externalRCRef: kotlinx_serialization_internal_GeneratedSerializer_childSerializers(self.__externalRCRef()))
    }
    public func typeParametersSerializers() -> ExportedKotlinPackages.kotlin.Array {
        return ExportedKotlinPackages.kotlin.Array(__externalRCRef: kotlinx_serialization_internal_GeneratedSerializer_typeParametersSerializers(self.__externalRCRef()))
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModuleCollector where Self : KotlinRuntimeSupport._KotlinBridged {
    public func contextual(
        kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        provider: @escaping @convention(block) (Swift.Array<any ExportedKotlinPackages.kotlinx.serialization.KSerializer>) -> any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> Swift.Void {
        return kotlinx_serialization_modules_SerializersModuleCollector_contextual__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_U28Swift_Array_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer_U29202D_U20anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(self.__externalRCRef(), kClass.__externalRCRef(), {
            let originalBlock = provider
            return { arg0 in return originalBlock(arg0 as! Swift.Array<any ExportedKotlinPackages.kotlinx.serialization.KSerializer>).__externalRCRef() }
        }())
    }
    public func contextual(
        kClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        serializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> Swift.Void {
        return kotlinx_serialization_modules_SerializersModuleCollector_contextual__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(self.__externalRCRef(), kClass.__externalRCRef(), serializer.__externalRCRef())
    }
    public func polymorphic(
        baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        actualClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        actualSerializer: any ExportedKotlinPackages.kotlinx.serialization.KSerializer
    ) -> Swift.Void {
        return kotlinx_serialization_modules_SerializersModuleCollector_polymorphic__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlin_reflect_KClass_anyU20ExportedKotlinPackages_kotlinx_serialization_KSerializer__(self.__externalRCRef(), baseClass.__externalRCRef(), actualClass.__externalRCRef(), actualSerializer.__externalRCRef())
    }
    @available(*, deprecated, message: "Deprecated in favor of function with more precise name: polymorphicDefaultDeserializer. Replacement: polymorphicDefaultDeserializer(baseClass, defaultDeserializerProvider)")
    public func polymorphicDefault(
        baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        defaultDeserializerProvider: @escaping @convention(block) (Swift.Optional<Swift.String>) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy>
    ) -> Swift.Void {
        return kotlinx_serialization_modules_SerializersModuleCollector_polymorphicDefault__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_U28Swift_Optional_Swift_String_U29202D_U20Swift_Optional_anyU20ExportedKotlinPackages_kotlinx_serialization_DeserializationStrategy___(self.__externalRCRef(), baseClass.__externalRCRef(), {
            let originalBlock = defaultDeserializerProvider
            return { arg0 in return originalBlock(arg0).map { it in it.__externalRCRef() } ?? 0 }
        }())
    }
    public func polymorphicDefaultDeserializer(
        baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        defaultDeserializerProvider: @escaping @convention(block) (Swift.Optional<Swift.String>) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy>
    ) -> Swift.Void {
        return kotlinx_serialization_modules_SerializersModuleCollector_polymorphicDefaultDeserializer__TypesOfArguments__anyU20ExportedKotlinPackages_kotlin_reflect_KClass_U28Swift_Optional_Swift_String_U29202D_U20Swift_Optional_anyU20ExportedKotlinPackages_kotlinx_serialization_DeserializationStrategy___(self.__externalRCRef(), baseClass.__externalRCRef(), {
            let originalBlock = defaultDeserializerProvider
            return { arg0 in return originalBlock(arg0).map { it in it.__externalRCRef() } ?? 0 }
        }())
    }
    public func polymorphicDefaultSerializer(
        baseClass: any ExportedKotlinPackages.kotlin.reflect.KClass,
        defaultSerializerProvider: @escaping @convention(block) (Swift.Never) -> Swift.Optional<any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy>
    ) -> Swift.Void {
        fatalError()
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor where Self : KotlinRuntimeSupport._KotlinBridged {
    public var annotations: [any ExportedKotlinPackages.kotlin.Annotation] {
        get {
            return kotlinx_serialization_descriptors_SerialDescriptor_annotations_get(self.__externalRCRef()) as! Swift.Array<any ExportedKotlinPackages.kotlin.Annotation>
        }
    }
    public var elementsCount: Swift.Int32 {
        get {
            return kotlinx_serialization_descriptors_SerialDescriptor_elementsCount_get(self.__externalRCRef())
        }
    }
    public var isInline: Swift.Bool {
        get {
            return kotlinx_serialization_descriptors_SerialDescriptor_isInline_get(self.__externalRCRef())
        }
    }
    public var isNullable: Swift.Bool {
        get {
            return kotlinx_serialization_descriptors_SerialDescriptor_isNullable_get(self.__externalRCRef())
        }
    }
    public var kind: ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind {
        get {
            return ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialKind(__externalRCRef: kotlinx_serialization_descriptors_SerialDescriptor_kind_get(self.__externalRCRef()))
        }
    }
    public var serialName: Swift.String {
        get {
            return kotlinx_serialization_descriptors_SerialDescriptor_serialName_get(self.__externalRCRef())
        }
    }
    public func getElementAnnotations(
        index: Swift.Int32
    ) -> [any ExportedKotlinPackages.kotlin.Annotation] {
        return kotlinx_serialization_descriptors_SerialDescriptor_getElementAnnotations__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), index) as! Swift.Array<any ExportedKotlinPackages.kotlin.Annotation>
    }
    public func getElementDescriptor(
        index: Swift.Int32
    ) -> any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_descriptors_SerialDescriptor_getElementDescriptor__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), index)) as! any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    }
    public func getElementIndex(
        name: Swift.String
    ) -> Swift.Int32 {
        return kotlinx_serialization_descriptors_SerialDescriptor_getElementIndex__TypesOfArguments__Swift_String__(self.__externalRCRef(), name)
    }
    public func getElementName(
        index: Swift.Int32
    ) -> Swift.String {
        return kotlinx_serialization_descriptors_SerialDescriptor_getElementName__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), index)
    }
    public func isElementOptional(
        index: Swift.Int32
    ) -> Swift.Bool {
        return kotlinx_serialization_descriptors_SerialDescriptor_isElementOptional__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), index)
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.encoding {
    public protocol ChunkedDecoder: KotlinRuntime.KotlinBase {
        func decodeStringChunked(
            consumeChunk: @escaping @convention(block) (Swift.String) -> Swift.Void
        ) -> Swift.Void
    }
    public protocol CompositeDecoder: KotlinRuntime.KotlinBase {
        public final class Companion: KotlinRuntime.KotlinBase, KotlinRuntimeSupport._KotlinBridged {
            public var DECODE_DONE: Swift.Int32 {
                get {
                    return kotlinx_serialization_encoding_CompositeDecoder_Companion_DECODE_DONE_get(self.__externalRCRef())
                }
            }
            public var UNKNOWN_NAME: Swift.Int32 {
                get {
                    return kotlinx_serialization_encoding_CompositeDecoder_Companion_UNKNOWN_NAME_get(self.__externalRCRef())
                }
            }
            public static var shared: ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder.Companion {
                get {
                    return ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder.Companion(__externalRCRef: kotlinx_serialization_encoding_CompositeDecoder_Companion_get())
                }
            }
            package override init(
                __externalRCRef: Swift.UInt
            ) {
                super.init(__externalRCRef: __externalRCRef)
            }
            private override init() {
                fatalError()
            }
        }
        var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
            get
        }
        func decodeBooleanElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Bool
        func decodeByteElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int8
        func decodeCharElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Unicode.UTF16.CodeUnit
        func decodeCollectionSize(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Int32
        func decodeDoubleElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Double
        func decodeElementIndex(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Int32
        func decodeFloatElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Float
        func decodeInlineElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        func decodeIntElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int32
        func decodeLongElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int64
        func decodeNullableSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never
        func decodeSequentially() -> Swift.Bool
        func decodeSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never
        func decodeShortElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int16
        func decodeStringElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.String
        func endStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Void
    }
    public protocol CompositeEncoder: KotlinRuntime.KotlinBase {
        var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
            get
        }
        func encodeBooleanElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Bool
        ) -> Swift.Void
        func encodeByteElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int8
        ) -> Swift.Void
        func encodeCharElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Unicode.UTF16.CodeUnit
        ) -> Swift.Void
        func encodeDoubleElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Double
        ) -> Swift.Void
        func encodeFloatElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Float
        ) -> Swift.Void
        func encodeInlineElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
        func encodeIntElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int32
        ) -> Swift.Void
        func encodeLongElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int64
        ) -> Swift.Void
        func encodeNullableSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void
        func encodeSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void
        func encodeShortElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int16
        ) -> Swift.Void
        func encodeStringElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.String
        ) -> Swift.Void
        func endStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Void
        func shouldEncodeElementDefault(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Bool
    }
    public protocol Decoder: KotlinRuntime.KotlinBase {
        var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
            get
        }
        func beginStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder
        func decodeBoolean() -> Swift.Bool
        func decodeByte() -> Swift.Int8
        func decodeChar() -> Swift.Unicode.UTF16.CodeUnit
        func decodeDouble() -> Swift.Double
        func decodeEnum(
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Int32
        func decodeFloat() -> Swift.Float
        func decodeInline(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        func decodeInt() -> Swift.Int32
        func decodeLong() -> Swift.Int64
        func decodeNotNullMark() -> Swift.Bool
        func decodeNull() -> Swift.Never?
        func decodeNullableSerializableValue(
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy
        ) -> Swift.Never
        func decodeSerializableValue(
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy
        ) -> Swift.Never
        func decodeShort() -> Swift.Int16
        func decodeString() -> Swift.String
    }
    public protocol Encoder: KotlinRuntime.KotlinBase {
        var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
            get
        }
        func beginCollection(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            collectionSize: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder
        func beginStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder
        func encodeBoolean(
            value: Swift.Bool
        ) -> Swift.Void
        func encodeByte(
            value: Swift.Int8
        ) -> Swift.Void
        func encodeChar(
            value: Swift.Unicode.UTF16.CodeUnit
        ) -> Swift.Void
        func encodeDouble(
            value: Swift.Double
        ) -> Swift.Void
        func encodeEnum(
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Void
        func encodeFloat(
            value: Swift.Float
        ) -> Swift.Void
        func encodeInline(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
        func encodeInt(
            value: Swift.Int32
        ) -> Swift.Void
        func encodeLong(
            value: Swift.Int64
        ) -> Swift.Void
        func encodeNotNullMark() -> Swift.Void
        func encodeNull() -> Swift.Void
        func encodeNullableSerializableValue(
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void
        func encodeSerializableValue(
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void
        func encodeShort(
            value: Swift.Int16
        ) -> Swift.Void
        func encodeString(
            value: Swift.String
        ) -> Swift.Void
    }
    open class AbstractDecoder: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder, ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder, KotlinRuntimeSupport._KotlinBridged {
        open func beginStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_AbstractDecoder_beginStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder
        }
        open func decodeBoolean() -> Swift.Bool {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeBoolean(self.__externalRCRef())
        }
        public final func decodeBooleanElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Bool {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeBooleanElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeByte() -> Swift.Int8 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeByte(self.__externalRCRef())
        }
        public final func decodeByteElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int8 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeByteElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeChar() -> Swift.Unicode.UTF16.CodeUnit {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeChar(self.__externalRCRef())
        }
        public final func decodeCharElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Unicode.UTF16.CodeUnit {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeCharElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeDouble() -> Swift.Double {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeDouble(self.__externalRCRef())
        }
        public final func decodeDoubleElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Double {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeDoubleElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeEnum(
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Int32 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeEnum__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), enumDescriptor.__externalRCRef())
        }
        open func decodeFloat() -> Swift.Float {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeFloat(self.__externalRCRef())
        }
        public final func decodeFloatElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Float {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeFloatElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeInline(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_AbstractDecoder_decodeInline__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        }
        open func decodeInlineElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_AbstractDecoder_decodeInlineElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
        }
        open func decodeInt() -> Swift.Int32 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeInt(self.__externalRCRef())
        }
        public final func decodeIntElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int32 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeIntElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeLong() -> Swift.Int64 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeLong(self.__externalRCRef())
        }
        public final func decodeLongElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int64 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeLongElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeNotNullMark() -> Swift.Bool {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeNotNullMark(self.__externalRCRef())
        }
        open func decodeNull() -> Swift.Never? {
            return { kotlinx_serialization_encoding_AbstractDecoder_decodeNull(self.__externalRCRef()); return nil; }()
        }
        public final func decodeNullableSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        open func decodeSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        open func decodeSerializableValue(
            deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
            previousValue: Swift.Never
        ) -> Swift.Never {
            fatalError()
        }
        open func decodeShort() -> Swift.Int16 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeShort(self.__externalRCRef())
        }
        public final func decodeShortElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Int16 {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeShortElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeString() -> Swift.String {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeString(self.__externalRCRef())
        }
        public final func decodeStringElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.String {
            return kotlinx_serialization_encoding_AbstractDecoder_decodeStringElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func decodeValue() -> KotlinRuntime.KotlinBase {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_AbstractDecoder_decodeValue(self.__externalRCRef()))
        }
        open func endStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractDecoder_endStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
    open class AbstractEncoder: KotlinRuntime.KotlinBase, ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder, ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder, KotlinRuntimeSupport._KotlinBridged {
        open func beginStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_AbstractEncoder_beginStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder
        }
        open func encodeBoolean(
            value: Swift.Bool
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeBoolean__TypesOfArguments__Swift_Bool__(self.__externalRCRef(), value)
        }
        public final func encodeBooleanElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Bool
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeBooleanElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Bool__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeByte(
            value: Swift.Int8
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeByte__TypesOfArguments__Swift_Int8__(self.__externalRCRef(), value)
        }
        public final func encodeByteElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int8
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeByteElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int8__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeChar(
            value: Swift.Unicode.UTF16.CodeUnit
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeChar__TypesOfArguments__Swift_Unicode_UTF16_CodeUnit__(self.__externalRCRef(), value)
        }
        public final func encodeCharElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Unicode.UTF16.CodeUnit
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeCharElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Unicode_UTF16_CodeUnit__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeDouble(
            value: Swift.Double
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeDouble__TypesOfArguments__Swift_Double__(self.__externalRCRef(), value)
        }
        public final func encodeDoubleElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Double
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeDoubleElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Double__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Bool {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
        }
        open func encodeEnum(
            enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeEnum__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), enumDescriptor.__externalRCRef(), index)
        }
        open func encodeFloat(
            value: Swift.Float
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeFloat__TypesOfArguments__Swift_Float__(self.__externalRCRef(), value)
        }
        public final func encodeFloatElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Float
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeFloatElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Float__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeInline(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_AbstractEncoder_encodeInline__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
        }
        public final func encodeInlineElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32
        ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder {
            return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_AbstractEncoder_encodeInlineElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
        }
        open func encodeInt(
            value: Swift.Int32
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeInt__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), value)
        }
        public final func encodeIntElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int32
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeIntElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeLong(
            value: Swift.Int64
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeLong__TypesOfArguments__Swift_Int64__(self.__externalRCRef(), value)
        }
        public final func encodeLongElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int64
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeLongElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int64__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeNull() -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeNull(self.__externalRCRef())
        }
        open func encodeNullableSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeSerializableElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
            value: Swift.Never
        ) -> Swift.Void {
            fatalError()
        }
        open func encodeShort(
            value: Swift.Int16
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeShort__TypesOfArguments__Swift_Int16__(self.__externalRCRef(), value)
        }
        public final func encodeShortElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.Int16
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeShortElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int16__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeString(
            value: Swift.String
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeString__TypesOfArguments__Swift_String__(self.__externalRCRef(), value)
        }
        public final func encodeStringElement(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
            index: Swift.Int32,
            value: Swift.String
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeStringElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_String__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
        }
        open func encodeValue(
            value: KotlinRuntime.KotlinBase
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_encodeValue__TypesOfArguments__KotlinRuntime_KotlinBase__(self.__externalRCRef(), value.__externalRCRef())
        }
        open func endStructure(
            descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
        ) -> Swift.Void {
            return kotlinx_serialization_encoding_AbstractEncoder_endStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
        }
        package override init() {
            fatalError()
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.encoding.ChunkedDecoder where Self : KotlinRuntimeSupport._KotlinBridged {
    public func decodeStringChunked(
        consumeChunk: @escaping @convention(block) (Swift.String) -> Swift.Void
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_ChunkedDecoder_decodeStringChunked__TypesOfArguments__U28Swift_StringU29202D_U20Swift_Void__(self.__externalRCRef(), {
            let originalBlock = consumeChunk
            return { arg0 in return originalBlock(arg0) }
        }())
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder where Self : KotlinRuntimeSupport._KotlinBridged {
    public final class Companion: KotlinRuntime.KotlinBase, KotlinRuntimeSupport._KotlinBridged {
        public var DECODE_DONE: Swift.Int32 {
            get {
                return kotlinx_serialization_encoding_CompositeDecoder_Companion_DECODE_DONE_get(self.__externalRCRef())
            }
        }
        public var UNKNOWN_NAME: Swift.Int32 {
            get {
                return kotlinx_serialization_encoding_CompositeDecoder_Companion_UNKNOWN_NAME_get(self.__externalRCRef())
            }
        }
        public static var shared: ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder.Companion {
            get {
                return ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder.Companion(__externalRCRef: kotlinx_serialization_encoding_CompositeDecoder_Companion_get())
            }
        }
        package override init(
            __externalRCRef: Swift.UInt
        ) {
            super.init(__externalRCRef: __externalRCRef)
        }
        private override init() {
            fatalError()
        }
    }
    public var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        get {
            return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_encoding_CompositeDecoder_serializersModule_get(self.__externalRCRef()))
        }
    }
    public func decodeBooleanElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Bool {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeBooleanElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeByteElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Int8 {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeByteElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeCharElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Unicode.UTF16.CodeUnit {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeCharElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeCollectionSize(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Int32 {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeCollectionSize__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
    }
    public func decodeDoubleElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Double {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeDoubleElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeElementIndex(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Int32 {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeElementIndex__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
    }
    public func decodeFloatElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Float {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeFloatElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeInlineElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_CompositeDecoder_decodeInlineElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
    }
    public func decodeIntElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Int32 {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeIntElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeLongElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Int64 {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeLongElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeNullableSerializableElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
        previousValue: Swift.Never
    ) -> Swift.Never {
        fatalError()
    }
    public func decodeSequentially() -> Swift.Bool {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeSequentially(self.__externalRCRef())
    }
    public func decodeSerializableElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy,
        previousValue: Swift.Never
    ) -> Swift.Never {
        fatalError()
    }
    public func decodeShortElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Int16 {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeShortElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func decodeStringElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.String {
        return kotlinx_serialization_encoding_CompositeDecoder_decodeStringElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
    public func endStructure(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeDecoder_endStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder where Self : KotlinRuntimeSupport._KotlinBridged {
    public var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        get {
            return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_encoding_CompositeEncoder_serializersModule_get(self.__externalRCRef()))
        }
    }
    public func encodeBooleanElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Bool
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeBooleanElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Bool__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeByteElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Int8
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeByteElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int8__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeCharElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Unicode.UTF16.CodeUnit
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeCharElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Unicode_UTF16_CodeUnit__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeDoubleElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Double
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeDoubleElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Double__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeFloatElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Float
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeFloatElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Float__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeInlineElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_CompositeEncoder_encodeInlineElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
    }
    public func encodeIntElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Int32
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeIntElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeLongElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Int64
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeLongElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int64__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeNullableSerializableElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
        value: Swift.Never
    ) -> Swift.Void {
        fatalError()
    }
    public func encodeSerializableElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
        value: Swift.Never
    ) -> Swift.Void {
        fatalError()
    }
    public func encodeShortElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.Int16
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeShortElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_Int16__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func encodeStringElement(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32,
        value: Swift.String
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_encodeStringElement__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32_Swift_String__(self.__externalRCRef(), descriptor.__externalRCRef(), index, value)
    }
    public func endStructure(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_CompositeEncoder_endStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())
    }
    public func shouldEncodeElementDefault(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Bool {
        return kotlinx_serialization_encoding_CompositeEncoder_shouldEncodeElementDefault__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), index)
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder where Self : KotlinRuntimeSupport._KotlinBridged {
    public var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        get {
            return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_encoding_Decoder_serializersModule_get(self.__externalRCRef()))
        }
    }
    public func beginStructure(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_Decoder_beginStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeDecoder
    }
    public func decodeBoolean() -> Swift.Bool {
        return kotlinx_serialization_encoding_Decoder_decodeBoolean(self.__externalRCRef())
    }
    public func decodeByte() -> Swift.Int8 {
        return kotlinx_serialization_encoding_Decoder_decodeByte(self.__externalRCRef())
    }
    public func decodeChar() -> Swift.Unicode.UTF16.CodeUnit {
        return kotlinx_serialization_encoding_Decoder_decodeChar(self.__externalRCRef())
    }
    public func decodeDouble() -> Swift.Double {
        return kotlinx_serialization_encoding_Decoder_decodeDouble(self.__externalRCRef())
    }
    public func decodeEnum(
        enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> Swift.Int32 {
        return kotlinx_serialization_encoding_Decoder_decodeEnum__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), enumDescriptor.__externalRCRef())
    }
    public func decodeFloat() -> Swift.Float {
        return kotlinx_serialization_encoding_Decoder_decodeFloat(self.__externalRCRef())
    }
    public func decodeInline(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_Decoder_decodeInline__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Decoder
    }
    public func decodeInt() -> Swift.Int32 {
        return kotlinx_serialization_encoding_Decoder_decodeInt(self.__externalRCRef())
    }
    public func decodeLong() -> Swift.Int64 {
        return kotlinx_serialization_encoding_Decoder_decodeLong(self.__externalRCRef())
    }
    public func decodeNotNullMark() -> Swift.Bool {
        return kotlinx_serialization_encoding_Decoder_decodeNotNullMark(self.__externalRCRef())
    }
    public func decodeNull() -> Swift.Never? {
        return { kotlinx_serialization_encoding_Decoder_decodeNull(self.__externalRCRef()); return nil; }()
    }
    public func decodeNullableSerializableValue(
        deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy
    ) -> Swift.Never {
        fatalError()
    }
    public func decodeSerializableValue(
        deserializer: any ExportedKotlinPackages.kotlinx.serialization.DeserializationStrategy
    ) -> Swift.Never {
        fatalError()
    }
    public func decodeShort() -> Swift.Int16 {
        return kotlinx_serialization_encoding_Decoder_decodeShort(self.__externalRCRef())
    }
    public func decodeString() -> Swift.String {
        return kotlinx_serialization_encoding_Decoder_decodeString(self.__externalRCRef())
    }
}
public extension ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder where Self : KotlinRuntimeSupport._KotlinBridged {
    public var serializersModule: ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule {
        get {
            return ExportedKotlinPackages.kotlinx.serialization.modules.SerializersModule(__externalRCRef: kotlinx_serialization_encoding_Encoder_serializersModule_get(self.__externalRCRef()))
        }
    }
    public func beginCollection(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        collectionSize: Swift.Int32
    ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_Encoder_beginCollection__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), descriptor.__externalRCRef(), collectionSize)) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder
    }
    public func beginStructure(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_Encoder_beginStructure__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.CompositeEncoder
    }
    public func encodeBoolean(
        value: Swift.Bool
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeBoolean__TypesOfArguments__Swift_Bool__(self.__externalRCRef(), value)
    }
    public func encodeByte(
        value: Swift.Int8
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeByte__TypesOfArguments__Swift_Int8__(self.__externalRCRef(), value)
    }
    public func encodeChar(
        value: Swift.Unicode.UTF16.CodeUnit
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeChar__TypesOfArguments__Swift_Unicode_UTF16_CodeUnit__(self.__externalRCRef(), value)
    }
    public func encodeDouble(
        value: Swift.Double
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeDouble__TypesOfArguments__Swift_Double__(self.__externalRCRef(), value)
    }
    public func encodeEnum(
        enumDescriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor,
        index: Swift.Int32
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeEnum__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor_Swift_Int32__(self.__externalRCRef(), enumDescriptor.__externalRCRef(), index)
    }
    public func encodeFloat(
        value: Swift.Float
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeFloat__TypesOfArguments__Swift_Float__(self.__externalRCRef(), value)
    }
    public func encodeInline(
        descriptor: any ExportedKotlinPackages.kotlinx.serialization.descriptors.SerialDescriptor
    ) -> any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder {
        return KotlinRuntime.KotlinBase(__externalRCRef: kotlinx_serialization_encoding_Encoder_encodeInline__TypesOfArguments__anyU20ExportedKotlinPackages_kotlinx_serialization_descriptors_SerialDescriptor__(self.__externalRCRef(), descriptor.__externalRCRef())) as! any ExportedKotlinPackages.kotlinx.serialization.encoding.Encoder
    }
    public func encodeInt(
        value: Swift.Int32
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeInt__TypesOfArguments__Swift_Int32__(self.__externalRCRef(), value)
    }
    public func encodeLong(
        value: Swift.Int64
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeLong__TypesOfArguments__Swift_Int64__(self.__externalRCRef(), value)
    }
    public func encodeNotNullMark() -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeNotNullMark(self.__externalRCRef())
    }
    public func encodeNull() -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeNull(self.__externalRCRef())
    }
    public func encodeNullableSerializableValue(
        serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
        value: Swift.Never
    ) -> Swift.Void {
        fatalError()
    }
    public func encodeSerializableValue(
        serializer: any ExportedKotlinPackages.kotlinx.serialization.SerializationStrategy,
        value: Swift.Never
    ) -> Swift.Void {
        fatalError()
    }
    public func encodeShort(
        value: Swift.Int16
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeShort__TypesOfArguments__Swift_Int16__(self.__externalRCRef(), value)
    }
    public func encodeString(
        value: Swift.String
    ) -> Swift.Void {
        return kotlinx_serialization_encoding_Encoder_encodeString__TypesOfArguments__Swift_String__(self.__externalRCRef(), value)
    }
}
